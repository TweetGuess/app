import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';

class TransitionHelper {
  static Function(BuildContext, Animation<double>, Animation<double>, Widget)
      slideRightTransition =
      (p0, p1, p2, p3) => _buildSlideRightTransition(p0, p1, p2, p3);

  static SlideTransition _buildSlideRightTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    var begin = const Offset(1.0, 0.0);
    var end = Offset.zero;
    var curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    var slideAnimation = animation.drive(tween);

    var oldPageSlideAnimation = secondaryAnimation.drive(
      Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(-1.0, 0.0),
      ).chain(CurveTween(curve: curve)),
    );

    return SlideTransition(
      position: slideAnimation,
      child: SlideTransition(
        position: oldPageSlideAnimation,
        child: child,
      ),
    );
  }

  

  static Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget, [
    Offset?,
  ]) circularRevealTransition = (p0, p1, p2, p3, [p4]) =>
      _buildCircularRevealTransition(p0, p1, p2, p3, p4);

  static CircularRevealAnimation _buildCircularRevealTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
    Offset? offset,
  ) {
    return CircularRevealAnimation(
      animation: animation,
      centerOffset: offset,
      child: child,
    );
  }
}
