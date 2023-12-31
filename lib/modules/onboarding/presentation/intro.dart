import 'package:animated_widgets/widgets/translation_animated.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';

import '../../home/presentation/home.dart';

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

    List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        title: "onboarding.page1.title".tr(),
        body: "onboarding.page1.body".tr(),
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
              Offset(0, 0), //enabled value
            ],
            child: Image.asset("assets/splash.png", height: 300.0),
          ),
        ),
      ),
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      done: Text(
        "global.done".tr(),
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
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

        context
            .read<UserBloc>()
            .add(UserUpdateIntroStatus(finishedIntro: true));
      },
    );
  }
}
