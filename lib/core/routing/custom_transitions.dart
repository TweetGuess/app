import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tweetguess/core/ui/observers/navigator.dart';
import 'package:tweetguess/ui/utils/transitions/helper.dart';

enum TransitionType {
  none,
  slideRight,
  circularReveal,
  gameEntry,
  nextRound,
}

class CustomTransitions {
  static CustomTransitionPage<T> createTransition<T>({
    required Widget child,
    required TransitionType type,
    String? name,
    Object? arguments,
    Offset? offset,
    Duration duration = const Duration(milliseconds: 600),
    LocalKey? key,
  }) {
    switch (type) {
      case TransitionType.none:
        return NoTransitionPage<T>(
          child: child,
          name: name,
          arguments: arguments,
          key: key,
        );
        
      case TransitionType.slideRight:
        return CustomTransitionPage<T>(
          child: child,
          name: name,
          arguments: arguments,
          key: key,
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
        
      case TransitionType.circularReveal:
        return CustomTransitionPage<T>(
          child: child,
          name: name,
          arguments: arguments,
          key: key,
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
        
      case TransitionType.gameEntry:
        return CustomTransitionPage<T>(
          child: child,
          name: name,
          arguments: arguments,
          key: key,
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
              // What looks without sense makes sense as we only want the transition to happen when we exit the game
              if (GoRouter.of(context).routerDelegate.currentConfiguration.last.matchedLocation != "/game/overview") {
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
          transitionDuration: duration ,
        );
      
      case TransitionType.nextRound:
        return CustomTransitionPage<T>(
          child: child,
          name: name,
          arguments: arguments,
          key: key,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // What looks without sense makes sense as we only want the transition to happen when we exit the game
            if (GoRouter.of(context).routerDelegate.currentConfiguration.last.matchedLocation != "/game/overview") {
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
          transitionDuration: duration,
        );
    }
  }
} 