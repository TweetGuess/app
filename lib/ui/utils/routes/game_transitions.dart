import 'package:flutter/cupertino.dart';

import '../transitions/helper.dart';

/// Transition for next game round
class NextRoundTransition extends PageRouteBuilder {
  final Widget page;

  NextRoundTransition({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return TransitionHelper.slideRightTransition(
              context,
              animation,
              secondaryAnimation,
              child,
            );
          },
        );
}
