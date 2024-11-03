import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tweetguess/ui/utils/transitions/helper.dart';

class CustomTransitions {
  // Slide right transition
  static CustomTransitionPage<T> slideRightTransition<T>({
    required Widget child,
    String? name,
    Object? arguments,
    Duration duration = const Duration(milliseconds: 600),
  }) {
    return CustomTransitionPage<T>(
      child: child,
      name: name,
      arguments: arguments,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return TransitionHelper.slideRightTransition(
          context,
          animation,
          secondaryAnimation,
          child,
        );
      },
      transitionDuration: duration,
    );
  }

  // Circular reveal transition
  static CustomTransitionPage<T> circularRevealTransition<T>({
    required Widget child,
    String? name,
    Object? arguments,
    Offset? offset,
    Duration duration = const Duration(milliseconds: 600),
  }) {
    return CustomTransitionPage<T>(
      child: child,
      name: name,
      arguments: arguments,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return TransitionHelper.circularRevealTransition(
          context,
          animation,
          secondaryAnimation,
          child,
          offset,
        );
      },
      transitionDuration: duration,
    );
  }

  // Game entry transition
  static CustomTransitionPage<T> gameEntryTransition<T>({
    required Widget child,
    String? name,
    Object? arguments,
    Offset? offset,
    Duration duration = const Duration(milliseconds: 600),
  }) {
    return CustomTransitionPage<T>(
      child: child,
      name: name,
      arguments: arguments,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
      transitionDuration: duration,
    );
  }
} 