import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/utils/shared_preferences.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';
import 'package:tweetguess/themes.dart';
import 'package:tweetguess/ui/utils/routes/circular_transition_route.dart';
import 'package:tweetguess/widgets/home.dart';
import 'package:tweetguess/widgets/intro.dart';
import 'package:tweetguess/widgets/profile.dart';
import 'package:tweetguess/widgets/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // EasyLocalization Setup
  await EasyLocalization.ensureInitialized();

  // hydrated_bloc setup
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  await SharedPrefs().init();
  await TweetService.loadTweets();

  setupGetIt();

  runApp(
    DevicePreview(
      builder: (context) => EasyLocalization(
        supportedLocales: const [Locale('en')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const TweetGuess(),
      ),
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
  var finishedIntro = SharedPrefs().finishedIntro;

  @override
  Widget build(BuildContext context) {
    var routes = {
      '/': (context) {
        return finishedIntro ? const HomeScreen() : const IntroScreen();
      },
      '/settings': (context) => const SettingsPage(),
      'profile': (context) => const ProfilePage()
    };

    return MultiBlocProvider(
      providers: [BlocProvider<UserBloc>(create: (_) => GetIt.I<UserBloc>())],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            title: 'TweetGuess',
            theme: lightThemeData(),
            // ignore: deprecated_member_use
            useInheritedMediaQuery: true,
            darkTheme: darkThemeData(),
            locale: DevicePreview.locale(context),
            navigatorKey: TweetGuess.globalKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            themeMode: ThemeMode.system,
            initialRoute: "/",
            builder: DevicePreview.appBuilder,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case "/":
                  {
                    return CircularTransitionRoute(page: routes['/']!(context));
                  }
                default:
                  return MaterialPageRoute(
                    builder: (context) => routes[settings.name]!(context),
                  );
              }
            },
          );
        },
      ),
    );
  }
}
