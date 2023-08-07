import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum HapticFeedbackType {
  lightImpact,
  mediumImpact,
  heavyImpact,
  selectionClick,
  vibrate,
}

class HapticGestureDetector extends StatelessWidget {
  const HapticGestureDetector({
    super.key,
    this.onTap,
    this.child,
    this.feedback = HapticFeedbackType.mediumImpact,
  });

  final GestureTapCallback? onTap;
  final Widget? child;
  final HapticFeedbackType feedback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _triggerVibration();

        onTap?.call();
      },
      child: child,
    );
  }

  void _triggerVibration() {
    switch (feedback) {
      case HapticFeedbackType.lightImpact:
        HapticFeedback.lightImpact();
        break;
      case HapticFeedbackType.mediumImpact:
        HapticFeedback.mediumImpact();
        break;
      case HapticFeedbackType.heavyImpact:
        HapticFeedback.heavyImpact();
        break;
      case HapticFeedbackType.selectionClick:
        HapticFeedback.selectionClick();
        break;
      case HapticFeedbackType.vibrate:
        HapticFeedback.vibrate();
        break;
    }
  }
}
