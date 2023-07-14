import 'package:flutter/material.dart';

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
              return TransitionHelper.slideRightTransition(
                context,
                animation,
                secondaryAnimation,
                child,
              );
            }
          },
          transitionDuration:
              transitionDuration ?? const Duration(milliseconds: 600),
          settings: settings,
        );
}
