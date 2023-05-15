import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../routes/circular_transition_route.dart';

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
            CircularTransitionRoute(
              page: page,
              offset: details.globalPosition,
            ),
          );
        });
      };
    },
  );
}
