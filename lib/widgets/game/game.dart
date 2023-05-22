import 'package:flutter/material.dart';
import 'package:tweetguess/widgets/game/countdown.dart';

import '../../ui/utils/routes/circular_transition_route.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();

  static Route route({
    bool countdownEnabled = true,
    Duration transitionDuration = const Duration(milliseconds: 600),
  }) {
    return CircularTransitionRoute(
      page: countdownEnabled ? const Countdown() : const GameScreen(),
      settings: const RouteSettings(name: "/game"),
    );
  }
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          // Pop route back to the one before
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.red,
          child: const Center(
            child: Text('TODO'),
          ),
        ),
      ),
    );
  }
}
