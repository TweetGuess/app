import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/utils/context.dart';
import 'package:tweetguess/ui/components/primary_button.dart';
import 'package:tweetguess/widgets/game/countdown.dart';
import 'package:tweetguess/widgets/game/timer.dart';

import '../../core/bloc/game/game_bloc.dart';
import '../../core/bloc/game/game_state.dart';
import '../../ui/utils/routes/circular_transition_route.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();

  // TODO: Maybe add a round parameter to set condition for when the BlocBuilder should listen?
  static Route route({
    bool countdownEnabled = true,
    GameBloc? bloc,
    Duration transitionDuration = const Duration(milliseconds: 600),
  }) {
    return CircularTransitionRoute(
      page: BlocProvider<GameBloc>(
        create: (context) =>
            bloc ?? context.readOrNull<GameBloc>() ?? GameBloc(),
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
        title: const Text(
          "TweetGuess",
        ),
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
            roundInProgress: (gameInProgress) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .copyWith(bottom: 20),
                child: Column(
                  children: [
                    _gameBar(gameInProgress),
                    const Gap(20),
                    Flexible(child: _tweetContent(context, gameInProgress)),
                    const Gap(20),
                    Flexible(
                      child: _answerButtons(context, gameInProgress),
                    ),
                  ],
                ),
              );
            },
            terminal: (value) => const Text("LOL"),
          );
        },
      ),
    );
  }

  Column _answerButtons(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _generateLayout(context, gameInProgress)..shuffle(),
    );
  }

  List<Widget> _generateLayout(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    var layout = <Widget>[];

    for (var i = 0;
        i <
            (gameInProgress.game.currentRound.answerPossibilities.length / 2)
                .floor();
        i++) {
      for (var element in [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildButton(
                  context,
                  gameInProgress.game.currentRound.answerPossibilities[i * 2],
                ),
              ),
              const Gap(10),
              Expanded(
                child: _buildButton(
                  context,
                  gameInProgress
                      .game.currentRound.answerPossibilities[i * 2 + 1],
                ),
              )
            ],
          ),
        ),
        if (i == 0) const Gap(10)
      ]) {
        layout.add(element);
      }
    }

    return layout;
  }

  Container _buildButton(
    BuildContext context,
    (
      GlobalKey<UIPrimaryButtonState>,
      (String name, String handle)
    ) answerPossibility,
  ) {
    return Container(
      key: answerPossibility.$1,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          answerPossibility.$2.$1,
        ),
      ),
    );
  }

  Container _tweetContent(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(gameInProgress.game.currentRound.content),
      ),
    );
  }

  SizedBox _gameBar(GameRoundInProgress value) {
    return SizedBox(
      height: 10.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Container(
            alignment: Alignment.center,
            child: const GameTimer(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: [
                      const Positioned.fill(
                        top: 1,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.bottomCenter,
                          child: Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: FittedBox(
                          child: AutoSizeText(
                            "${value.game.lives}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pixeboy",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
