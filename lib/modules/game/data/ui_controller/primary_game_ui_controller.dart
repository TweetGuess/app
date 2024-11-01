import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tweetguess/core/controller/analytics/analytics_controller.dart';
import 'package:tweetguess/core/utils/utils.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_state.dart';
import 'package:tweetguess/modules/game/domain/models/game.dart';
import 'package:tweetguess/ui/components/primary_game_button.dart';

import '../../../../ui/utils/routes/next_round_transition_route.dart';
import '../../presentation/bloc/game_bloc.dart';
import '../../presentation/game.dart';
import '../../presentation/views/overview.dart';
import '../../domain/ui_controller/game_ui_controller.dart';

/// A concrete implementation of [IGameUIController] that handles primary game UI effects, transitions & navigation.
///
/// This controller manages the core game UI functionality including:
/// - Pausing and resuming game timer
/// - Handling round completion animations and feedback
/// - Managing transitions between rounds
/// - Coordinating button state changes and haptic feedback
/// - Controlling tap interactions during animations
///
/// The controller works with [GameBloc] to coordinate effects, navigation and UI updates.
class PrimaryGameUIController extends IGameUIController {
  PrimaryGameUIController(
    super.context, {
    required super.gameTimerKey,
    required super.bloc,
  });

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
    RoundFinished finishedState,
    Game game,
  ) {
    ignoringTapsNotifier.value = true;

    switch (finishedState) {
      case RoundRightAnswer():
        {
          var buttonState = game.currentRound
              .answerPossibilities[game.currentRound.rightAnswer].$1;
          buttonState.currentState?.lightUpGreen();

          gameTimerKey.currentState?.countDownController?.pause();

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

              HapticFeedback.lightImpact();
            },
          );

          gameTimerKey.currentState?.countDownController?.pause();

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
  }

  @override
  void transitionToNextRound(
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
    // Firebase END GAME EVENT
    getIt<AnalyticsController>().logEndGame();

    print(getIt<AnalyticsController>().toString());

    // Add to Controller
    Navigator.of(context).pushReplacement(
      OverviewExitScreen.route(game: game),
    );
  }
}
