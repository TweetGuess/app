import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tweetguess/core/utils/shared_preferences.dart';

import 'home.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool startAnim = false;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setState(() {
        startAnim = true;
      }),
    );

    // TODO: Translate text into English
    List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        title: "Willkommen zu TweetGuess!",
        body:
            "Den Autor eines Tweets anhand des Inhalts erraten... Einfach, oder?\nBei TweetGuess kannst du zeigen, ob du unsere Politiker kennst & dich gleichzeitig politisch mit ihren Aussagen auseinandersetzen sowie lernen fragwürdigen Content stärker zu hinterfragen. ",
        decoration: PageDecoration(
          imageFlex: 7,
          bodyFlex: 6,
          imageAlignment: Alignment.bottomCenter,
          imagePadding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        ),
        image: Center(
          child: TranslationAnimatedWidget(
            enabled: startAnim,
            delay: const Duration(milliseconds: 500),
            curve: Curves.easeInOutSine,
            //update this boolean to forward/reverse the animation
            values: const [
              Offset(0, -400), // disabled value value
              Offset(0, -300),
              Offset(0, -200), //intermediate value
              Offset(0, 0) //enabled value
            ],
            child: Image.asset("assets/splash.png", height: 300.0),
          ),
        ),
      )
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      onDone: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            curve: Curves.easeInOutSine,
            childCurrent: widget,
            alignment: Alignment.bottomCenter,
            child: const HomeScreen(),
          ),
        );
        SharedPrefs().finishedIntro = true;
      },
    );
  }
}
