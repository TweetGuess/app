import 'package:flutter/material.dart';

import '../../../core/observers/navigator.dart';
import '../transitions/helper.dart';

class CircularTransitionRoute extends PageRouteBuilder {
  final Widget page;
  CircularTransitionRoute({
    required this.page,
    Offset? offset,
    Duration? transitionDuration,
    RouteSettings? settings,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) {
            return TransitionHelper.circularRevealTransition(
              context,
              animation,
              secondaryAnimation,
              child,
              offset,
            );
          },
          transitionDuration:
              transitionDuration ?? const Duration(milliseconds: 600),
          settings: settings,
        );
}

class GameEntryTransitionRoute extends PageRouteBuilder {
  final Widget page;
  GameEntryTransitionRoute({
    required this.page,
    Offset? offset,
    Duration? transitionDuration,
    RouteSettings? settings,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) {
            if (animation.status == AnimationStatus.forward) {
              return TransitionHelper.circularRevealTransition(
                context,
                animation,
                secondaryAnimation,
                child,
                offset,
              );
            } else {
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
            }
          },
          transitionDuration:
              transitionDuration ?? const Duration(milliseconds: 600),
          settings: settings,
        );
}
