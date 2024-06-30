import 'package:flutter/cupertino.dart';
import 'package:tweetguess/ui/utils/transitions/helper.dart';

class SlideRightTransition extends PageRouteBuilder {
  final Widget page;
  SlideRightTransition({
    required this.page,
    Offset? offset,
    Duration? transitionDuration,
    super.settings,
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
            return TransitionHelper.slideRightTransition(
              context,
              animation,
              secondaryAnimation,
              child,
            );
          },
          transitionDuration:
              transitionDuration ?? const Duration(milliseconds: 600),
        );
}
