import 'package:flutter/cupertino.dart';

import '../../../core/observers/navigator.dart';
import '../transitions/helper.dart';

/// Transition for next game round
class NextRoundTransitionRoute extends PageRouteBuilder {
  final Widget page;

  NextRoundTransitionRoute({required this.page})
      : super(
          transitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // What looks without sense makes sense as we only want the transition to happen when we exit the game
            if (AppNavObserver.navStack.last.name != "/game/overview") {
              return TransitionHelper.slideRightTransition(
                context,
                animation,
                secondaryAnimation,
                child,
              );
            } else {
              return child;
            }
          },
        );
}
