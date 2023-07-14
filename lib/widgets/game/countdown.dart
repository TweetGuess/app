import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweetguess/core/bloc/game/game_event.dart';
import 'package:tweetguess/ui/utils/routes/circular_transition_route.dart';

import '../../core/bloc/game/game_bloc.dart';
import '../../ui/text/countdown_text.dart';
import 'game.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;
  late Animation<Offset> _slideInLeftAnimation;
  late Animation<Offset> _slideInRightAnimation;

  int _count = 3;

  @override
  void initState() {
    super.initState();

    _setupAnimations();

    startTimer();
  }

  void _setupAnimations() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.400,
          curve: Curves.ease,
        ),
      ),
    );
    _slideInLeftAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(_controller);

    _slideInRightAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void startTimer() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _count--;
          if (_count > 0) {
            _controller.reset();
            _controller.forward();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (_count == 0) {
        context.read<GameBloc>().add(StartGame());

        Navigator.of(context).pushReplacement(
          GameEntryTransitionRoute(
            page: GameScreen.page(
              bloc: context.read<GameBloc>(),
              countdownEnabled: false,
            ),
          ),
        );
      }
    });

    return Material(
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (_count == 3)
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: const CountdownText(
                    '3',
                  ),
                ),
              if (_count == 2)
                SlideTransition(
                  position: _slideInLeftAnimation,
                  child: const CountdownText(
                    '2',
                  ),
                ),
              if (_count <= 1)
                SlideTransition(
                  position: _slideInRightAnimation,
                  child: const CountdownText(
                    '1',
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
