import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweetguess/core/bloc/game/game_event.dart';

import '../../core/bloc/game/game_bloc.dart';
import 'game.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  late Timer _timer;
  int _count = 3;

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
        context.read<GameBloc>().add(StartGame());

        Navigator.of(context).pushReplacement(
          GameScreen.route(
            countdownEnabled: false,
            bloc: context.read<GameBloc>(),
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
