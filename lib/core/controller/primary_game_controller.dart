import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';
import 'package:tweetguess/core/bloc/game/models/game.dart';
import 'package:tweetguess/ui/components/primary_button.dart';

import '../bloc/game/game_bloc.dart';
import '../bloc/game/game_event.dart';
import '../bloc/game/utils/const.dart';
import 'game_controller.dart';

class PrimaryGameController extends GameController {
  PrimaryGameController(
    this.context, {
    required this.gameTimerKey,
    required this.gameScoreNotifier,
    required this.bloc,
  });

  /// Used to access the TimerController to pause, resume & stop the timer
  GlobalKey<CircularCountDownTimerState> gameTimerKey;

  /// Used to update game score after we get feedback on the answer
  final ValueNotifier<int?> gameScoreNotifier;

  final GameBloc bloc;

  final BuildContext context;

  @override
  void pauseGame() {
    gameTimerKey.currentState?.countDownController?.pause();
  }

  @override
  void handleRoundFinished(
    RoundFinished inProgressState,
    Game game,
    int answerInd,
  ) {
    ignoringTapsNotifier.value = true;

    switch (inProgressState) {
      case RoundRightAnswer(selectedAnswer: int answerInd):
        {
          var buttonState = game.currentRound.answerPossibilities[answerInd].$1;
          buttonState.currentState?.lightUpGreen();

          gameTimerKey.currentState?.countDownController?.pause();

          gameScoreNotifier.value = game.points +
              GameConstants.TIME_PER_ROUND -
              int.parse(
                gameTimerKey.currentState?.time ?? '15',
              );

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

      default:
        {
          break;
        }
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      // then kick off next round
      bloc.add(
        GameEvent.nextRound(
          context: context,
          timeLeft: GameConstants.TIME_PER_ROUND -
              int.parse(
                gameTimerKey.currentState?.time ?? '15',
              ),
        ),
      );
    });
  }

  @override
  void handleWrongAnswer(Game game, int answerInd) {
    var buttonState = game.currentRound.answerPossibilities[answerInd].$1;
    buttonState.currentState?.lightUpRed();
  }
}
