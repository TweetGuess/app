import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../data/const.dart';

class GameTimer extends StatefulWidget {
  const GameTimer({super.key, this.onFinished, this.countdownTimerKey});

  final Function()? onFinished;
  final GlobalKey<CircularCountDownTimerState>? countdownTimerKey;

  @override
  State<GameTimer> createState() => _GameTimerState();
}

class _GameTimerState extends State<GameTimer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late CountDownController _countDownController;
  double colorAnimationValue = 0;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: GameConstants.TIME_PER_ROUND),
    );

    _countDownController = CountDownController();

    _countDownController.isPaused.addListener(() {
      if (_countDownController.isPaused.value) {
        colorAnimationValue = _controller.value;
        _controller.stop();
      } else {
        _controller.forward(from: colorAnimationValue);
      }
    });

    // Initialize the color animation
    _colorAnimation = TweenSequence<Color?>(
      [
        TweenSequenceItem(
          weight: 1.0 / 3.0,
          tween: ColorTween(
            begin: Colors.green,
            end: Colors.green,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0 / 3.0,
          tween: ColorTween(
            begin: Colors.green,
            end: Colors.yellow,
          ),
        ),
        TweenSequenceItem(
          weight: 1.0 / 3.0,
          tween: ColorTween(
            begin: Colors.yellow,
            end: Colors.red,
          ),
        ),
      ],
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CircularCountDownTimer(
            key: widget.countdownTimerKey,
            isReverse: true,
            onComplete: widget.onFinished,
            controller: _countDownController,
            width: 50,
            height: 50,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Pixeboy",
            ),
            autoStart: true,
            ringColor: _colorAnimation.value!.withOpacity(0.3),
            fillColor: _colorAnimation.value ?? Colors.red,
            duration: GameConstants.TIME_PER_ROUND,
          );
        },
      ),
    );
  }
}
