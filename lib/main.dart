import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/themes.dart';
import 'package:tweetguess/core/utils/shared_preferences.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';
import 'package:tweetguess/widgets/home.dart';
import 'package:tweetguess/widgets/intro.dart';
import 'package:tweetguess/widgets/profile.dart';
import 'package:tweetguess/widgets/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

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
    return ResponsiveSizer(
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
          routes: {
            '/': (context) =>
                finishedIntro ? const HomeScreen() : const IntroScreen(),
            '/settings': (context) => const SettingsPage(),
            'profile': (context) => const ProfilePage()
          },
        );
      },
    );
  }
}
