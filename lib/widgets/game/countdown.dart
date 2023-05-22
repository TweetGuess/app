import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../ui/utils/routes/circular_transition_route.dart';
import 'game.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  late Timer _timer;
  int _count = 5;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_count == 1) {
          setState(() {
            timer.cancel();
            _count = 0;
          });
        } else {
          setState(() {
            _count--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (_count == 0) {
        Navigator.of(context).pushReplacement(
          CircularTransitionRoute(
            page: const GameScreen(),
            transitionDuration: const Duration(milliseconds: 300),
          ),
        );
      }
    });

    return Container(
      color: Colors.blue,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: Text(_count.toString()),
        ),
      ),
    );
  }
}
