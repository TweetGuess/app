import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';
import 'package:tweetguess/modules/home/presentation/home.dart';
import 'package:tweetguess/modules/onboarding/presentation/intro.dart';
import 'package:tweetguess/modules/profile/presentation/profile.dart';
import 'package:tweetguess/modules/settings/presentation/settings.dart';
import 'package:tweetguess/themes.dart';
import 'package:tweetguess/ui/utils/routes/circular_transition_route.dart';

import 'core/data/models/user/settings/language.dart';
import 'core/observers/navigator.dart';

void main() async {
  if (kIsWeb) {
    initializeDateFormatting();
  }

  WidgetsFlutterBinding.ensureInitialized();

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
    DevicePreview(
      builder: (context) {
        return EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('de')],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          useOnlyLangCode: true,
          startLocale: GetIt.I<UserBloc>().state.settings.language.getLocale(),
          child: const TweetGuess(),
        );
      },
      enabled: !kReleaseMode,
    ),
  );
}

void setupGetIt() {
  // Global Logger Singleton
  GetIt.instance.registerSingleton<Logger>(Logger());
  GetIt.instance.registerSingleton<UserBloc>(UserBloc());
}

class TweetGuess extends StatefulWidget {
  static GlobalKey<NavigatorState> globalKey = GlobalKey();

  const TweetGuess({Key? key}) : super(key: key);

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
            navigatorObservers: [AppNavObserver()],
            builder: DevicePreview.appBuilder,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case "/":
                  {
                    return CircularTransitionRoute(page: routes['/']!(context), settings: settings);
                  }
                default:
                  return MaterialPageRoute(
                    builder: (context) => routes[settings.name]!(context),
                    settings: settings,
                  );
              }
            },
          );
        },
      ),
    );
  }
}
