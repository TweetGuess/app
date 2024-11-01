import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/controller/analytics/analytics_controller.dart';
import 'package:tweetguess/core/controller/analytics/default_analytics_controller.dart';
import 'package:tweetguess/core/controller/analytics/null_analytics_controller.dart';
import 'package:tweetguess/core/data/config/interface/app_env.dart';
import 'package:tweetguess/core/data/firebase/firebase_options.dart';
import 'package:tweetguess/core/data/models/user/settings/language.dart';
import 'package:tweetguess/core/services/shake_detection/shake_detection_interface.dart';
import 'package:tweetguess/core/services/shake_detection/shake_detection_service.dart';
import 'package:tweetguess/core/ui/widgets/web_wrapper.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';
import 'package:tweetguess/modules/home/presentation/home.dart';
import 'package:tweetguess/modules/onboarding/presentation/intro.dart';
import 'package:tweetguess/modules/profile/presentation/profile.dart';
import 'package:tweetguess/modules/settings/presentation/settings.dart';
import 'package:tweetguess/themes.dart';
import 'package:tweetguess/ui/utils/routes/circular_transition_route.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/ui/observers/navigator.dart';

void main() async {
  if (kIsWeb) {
    setPathUrlStrategy();
  }

  await SentryFlutter.init(
    (options) {
      // TODO: Sensitive data - REMOVE
      options.dsn = AppEnv().sentryDsn;
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      // The sampling rate for profiling is relative to tracesSampleRate
      // Setting to 1.0 will profile 100% of sampled transactions:
      options.profilesSampleRate = 1.0;
    },
    appRunner: () => _setupApp(),
  );
}

void _setupApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // EasyLocalization Setup
  await EasyLocalization.ensureInitialized();

  // hydrated_bloc setup
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  await TweetService.loadTweets();

  setupGetIt();

  runApp(
    WebWrapper(
      child: DevicePreview(
        isToolbarVisible: kIsWeb ? false : true,
        builder: (context) {
          return EasyLocalization(
            supportedLocales: const [Locale('en'), Locale('de')],
            path: 'assets/translations',
            fallbackLocale: const Locale('en'),
            useOnlyLangCode: true,
            startLocale:
                GetIt.I<UserBloc>().state.settings.language.getLocale(),
            child: const TweetGuess(),
          );
        },
        enabled: !kReleaseMode || kIsWeb,
      ),
    ),
  );
}

void setupGetIt() {
  // This is to allow reassignment of singletons (when e.g. disabling the analytics during runtime)
  GetIt.instance.allowReassignment = true;

  // Global Logger Singleton
  GetIt.instance.registerSingleton<Logger>(Logger());

  GetIt.instance.registerSingleton<UserBloc>(UserBloc());

  GetIt.instance.registerSingleton<AnalyticsController>(
    AppEnv().enableAnalytics
        ? DefaultAnalyticsController(analytics: FirebaseAnalytics.instance)
        : NullAnalyticsController(analytics: FirebaseAnalytics.instance),
  );

  GetIt.instance.registerFactory<IShakeDetectionService>(
    () => ShakeDetectionService(),
  );
}

class TweetGuess extends StatefulWidget {
  static GlobalKey<NavigatorState> globalKey = GlobalKey();

  const TweetGuess({super.key});

  @override
  State<TweetGuess> createState() => _TweetGuessState();
}

class _TweetGuessState extends State<TweetGuess> {
  @override
  Widget build(BuildContext context) {
    // TODO: Refactor declarative route usage
    var routes = {
      '/': (context) {
        return GetIt.I<UserBloc>().state.finishedIntro
            ? const HomeScreen()
            : const IntroScreen();
      },
      '/settings': (context) => const SettingsPage(),
      '/profile': (context) => const ProfilePage(),
    };

    return MultiBlocProvider(
      providers: [BlocProvider<UserBloc>(create: (_) => GetIt.I<UserBloc>())],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          var userBloc = context.watch<UserBloc>();

          return MaterialApp(
            title: 'TweetGuess',
            theme: lightThemeData(),
            // ignore: deprecated_member_use
            useInheritedMediaQuery: true,
            darkTheme: darkThemeData(),
            locale: context.locale,
            navigatorKey: TweetGuess.globalKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            themeMode: userBloc.userSettings.appearance,
            initialRoute: "/",
            navigatorObservers: [
              AppNavObserver(),
              SentryNavigatorObserver(),
              FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
            ],
            builder: DevicePreview.appBuilder,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case "/":
                  {
                    return CircularTransitionRoute(
                      page: routes['/']!(context),
                      settings: settings,
                    );
                  }
                default:
                  // Check if the route exists in your routes map
                  if (routes.containsKey(settings.name)) {
                    return MaterialPageRoute(
                      builder: (context) => routes[settings.name]!(context),
                      settings: settings,
                    );
                  } else {
                    // If the route does not exist, redirect to a default route
                    // This could be an error page or the home page as a fallback
                    return MaterialPageRoute(
                      builder: (context) => routes['/']!(
                        context,
                      ),
                    );
                  }
              }
            },
          );
        },
      ),
    );
  }
}
