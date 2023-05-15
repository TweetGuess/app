import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}

GestureRecognizerFactoryWithHandlers<AllowMultipleGestureRecognizer>
    circularRevealGestureRecognizer(BuildContext context, Widget page) {
  return GestureRecognizerFactoryWithHandlers<AllowMultipleGestureRecognizer>(
    () => AllowMultipleGestureRecognizer(),
    (AllowMultipleGestureRecognizer instance) {
      instance.onTapUp = (TapUpDetails details) {
        Future.delayed(const Duration(milliseconds: 100), () {
          Navigator.of(context).push(
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 600),
              pageBuilder: (
                context,
                animation,
                secondaryAnimation,
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
                  centerOffset: details.globalPosition,
                  child: child,
                );
              },
            ),
          );
        });
      };
    },
  );
}
