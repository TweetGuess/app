import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

class CircularTransitionRoute extends PageRouteBuilder {
  final Widget page;
  CircularTransitionRoute({
    required this.page,
    Offset? offset,
    Duration? transitionDuration,
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
            return CircularRevealAnimation(
              animation: animation,
              centerOffset: offset,
              child: child,
            );
          },
          transitionDuration:
              transitionDuration ?? const Duration(milliseconds: 600),
        );
}
