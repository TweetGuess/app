import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'TweetGuess',
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      navigatorKey: globalKey,
      themeMode: ThemeMode.system,
      home: finishedIntro ? HomeScreen() : IntroScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("TweetGuess"),
      ),
      body: Center(
          // TODO
          ),
    );
  }
}
