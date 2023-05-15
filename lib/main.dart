import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/themes.dart';
import 'package:tweetguess/utils/gestures/gestures.dart';
import 'package:tweetguess/utils/shared_preferences.dart';
import 'package:tweetguess/utils/tweet_service.dart';
import 'package:tweetguess/widgets/game.dart';
import 'package:tweetguess/widgets/intro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs().init();
  await TweetService.loadTweets();

  setupGetIt();

  runApp(
    DevicePreview(
      builder: (context) => const TweetGuess(),
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
          themeMode: ThemeMode.system,
          home: finishedIntro ? const HomeScreen() : const IntroScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Last tap down position to create circular reveal animation
  TapDownDetails? tapDownDetails;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: Theme.of(context).colorScheme.surface,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TweetGuess",
          style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1.5),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              print("GG");
            },
            child: CircleAvatar(
              radius: 55.0,
              backgroundColor: Theme.of(context).colorScheme.background,
              child: const Icon(Icons.person),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(
            top: 15.h,
            bottom: 7.5.h,
            left: 15.w,
            right: 15.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: AutoSizeText(
                  "Ready\nfor the Challenge?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(fontSize: 40.sp),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Image.asset(
                        "assets/images/earth.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        "Global Mode",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          textStyle: TextStyle(fontSize: 5.sp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: RawGestureDetector(
                    gestures: {
                      AllowMultipleGestureRecognizer:
                          circularRevealGestureRecognizer(
                        context,
                        const GameScreen(),
                      )
                    },
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "START GAME",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pixeboy",
                          fontSize: 25.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
