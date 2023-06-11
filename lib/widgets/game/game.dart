import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/widgets/game/countdown.dart';

import '../../core/bloc/game/game_bloc.dart';
import '../../core/bloc/game/game_state.dart';
import '../../ui/utils/routes/circular_transition_route.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();

  static Route route({
    bool countdownEnabled = true,
    GameBloc? bloc,
    Duration transitionDuration = const Duration(milliseconds: 600),
  }) {
    return CircularTransitionRoute(
      page: BlocProvider<GameBloc>(
        create: (context) => bloc ?? GameBloc(),
        child: (countdownEnabled ? const Countdown() : const GameScreen()),
      ),
      settings: const RouteSettings(name: "/game"),
    );
  }
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("TweetGuess"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [],
            ),
          ),
        ],
      ),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, parentState) {
          return parentState.map(
            initial: (gameInitial) {
              return const CircularProgressIndicator();
            },
            inProgress: (gameInProgress) {
              return Column(
                children: [
                  _gameBar(gameInProgress),
                  Text(gameInProgress.game.currentRound.content)
                ],
              );
            },
            terminal: (value) => const Text("LOL"),
          );
        },
      ),
    );
  }

  SizedBox _gameBar(GameInProgress value) {
    return SizedBox(
      height: 5.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const FittedBox(child: Icon(Icons.abc)),
          Expanded(
            child: FittedBox(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // TODO: Put number into heart!
                child: Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.fitHeight,
                      child: AutoSizeText("${value.game.lives}"),
                    ),
                    const Gap(5),
                    const FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Icon(Icons.favorite_border_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
