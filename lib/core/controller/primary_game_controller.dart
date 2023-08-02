import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';
import 'package:tweetguess/core/bloc/game/models/game.dart';
import 'package:tweetguess/ui/components/primary_game_button.dart';

import '../../ui/utils/routes/next_round_transition_route.dart';
import '../../widgets/game/game.dart';
import '../../widgets/game/overview.dart';
import '../bloc/game/game_bloc.dart';
import '../bloc/game/game_event.dart';
import '../bloc/game/models/round.dart';
import 'game_controller.dart';

class PrimaryGameController extends GameController {
  PrimaryGameController(
    BuildContext context, {
    required this.gameTimerKey,
    required this.gameScoreNotifier,
    required this.bloc,
  }) : super(context);

  /// Used to access the TimerController to pause, resume & stop the timer
  GlobalKey<CircularCountDownTimerState> gameTimerKey;

  /// Used to update game score after we get feedback on the answer
  final ValueNotifier<int?> gameScoreNotifier;

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
          timeLeft: int.parse(
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

  @override
  void transitionToNextRound(
    NextRound event,
    Game game,
    Round currentRound,
    Round nextRound,
  ) {
    // Activate transition to next round
    Navigator.of(context).pushReplacement(
      NextRoundTransitionRoute(
        page: GameScreen.page(
          bloc: GameBloc(
            GameState.roundInProgress(
              game.copyWith(
                points: game.points + event.timeLeft,
                pastRounds: [...game.pastRounds, currentRound],
                currentRound: nextRound,
              ),
            ),
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
