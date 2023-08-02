import 'package:flutter/material.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';
import 'package:tweetguess/core/bloc/game/models/game.dart';
import 'package:tweetguess/ui/components/primary_game_button.dart';
import 'package:tweetguess/ui/extensions/number.dart';

import '../../ui/utils/routes/next_round_transition_route.dart';
import '../../widgets/game/game.dart';
import '../../widgets/game/overview.dart';
import '../bloc/game/game_bloc.dart';
import '../bloc/game/game_event.dart';
import '../bloc/game/utils/const.dart';
import 'game_controller.dart';

class PrimaryGameController extends GameController {
  PrimaryGameController(
    BuildContext context, {
    required super.gameTimerKey,
    required super.gameScoreNotifier,
    required this.bloc,
  }) : super(context);

  final GameBloc bloc;

  @override
  void pauseGame() {
    gameTimerKey.currentState?.countDownController?.pause();
  }

  @override
  void resumeGame() {
    gameTimerKey.currentState?.countDownController?.resume();
  }

  @override
  void handleRoundFinished(
    RoundFinished inProgressState,
    Game game,
  ) {
    ignoringTapsNotifier.value = true;

    switch (inProgressState) {
      case RoundRightAnswer():
        {
          var buttonState = game.currentRound
              .answerPossibilities[game.currentRound.rightAnswer].$1;
          buttonState.currentState?.lightUpGreen();

          gameTimerKey.currentState?.countDownController?.pause();

          gameScoreNotifier.value = game.points +
              int.parse(
                gameTimerKey.currentState?.time ?? '15',
              );

          break;
        }

      case RoundWrongAnswer(selectedAnswer: int selectedAnswer):
        {
          var buttonState =
              game.currentRound.answerPossibilities[selectedAnswer].$1;
          buttonState.currentState?.lightUpRed();

          Future.delayed(
            const Duration(milliseconds: 300),
            () {
              var rightButtonState = game.currentRound
                  .answerPossibilities[game.currentRound.rightAnswer].$1;
              rightButtonState.currentState?.lightUpGreen();
            },
          );

          gameTimerKey.currentState?.countDownController?.pause();

          gameScoreNotifier.value =
              (game.points + GameConstants.MINUS_POINTS).toScore();

          break;
        }

      case RoundNoTimeLeft():
        {
          // Let all buttons light up red
          for (var possibility in game.currentRound.answerPossibilities) {
            possibility.$1.currentState?.lightUpRed();
          }
          break;
        }
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      bloc.add(
        GameEvent.nextRound(),
      );
    });
  }

  @override
  void transitionToNextRound(
    NextRound event,
    GameState state,
  ) {
    // Activate transition to next round
    Navigator.of(context).pushReplacement(
      NextRoundTransitionRoute(
        page: GameScreen.page(
          bloc: GameBloc(
            state,
          ),
          countdownEnabled: false,
        ),
      ),
    );
  }

  @override
  void transitionToOverviewExit(
    Game game,
  ) {
    // Add to Controller
    Navigator.of(context).pushReplacement(
      OverviewExitScreen.route(game: game),
    );
  }
}
