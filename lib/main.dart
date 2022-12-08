import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/themes.dart';
import 'package:tweetguess/utils/shared_preferences.dart';
import 'package:tweetguess/utils/tweet_service.dart';
import 'package:tweetguess/widgets/intro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs().init();
  await TweetService.loadTweets();

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(TweetGuess());
}

class TweetGuess extends StatelessWidget {
  var finishedIntro = SharedPrefs().finishedIntro;
  static GlobalKey<NavigatorState> globalKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'TweetGuess',
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
        navigatorKey: globalKey,
        themeMode: ThemeMode.system,
        home: finishedIntro ? HomeScreen() : IntroScreen(),
      );
    });
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: Theme.of(context).colorScheme.surface));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TweetGuess",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
          )
        ],
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              print("GG");
            },
            child: CircleAvatar(
              radius: 55.0,
              backgroundColor: Theme.of(context).colorScheme.background,
              child: Icon(Icons.person),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.only(
                top: 15.h, bottom: 7.5.h, left: 15.w, right: 15.w),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: AutoSizeText("Ready\nfor the Challenge?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50.dp)),
                      flex: 2),
                  Spacer(),
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      "assets/brand.png",
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO
                          Navigator.pushNamed(context, "/game");
                        },
                        child: Text("Start game"),
                      ),
                    ),
                  )
                ])),
      ),
    );
  }
}
