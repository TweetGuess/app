import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:status_alert/status_alert.dart';
import 'package:tweetguess/core/controller/analytics/analytics_controller.dart';
import 'package:tweetguess/core/routing/custom_transitions.dart';
import 'package:tweetguess/core/utils/utils.dart';
import 'package:tweetguess/modules/game/domain/models/game.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_state.dart';
import 'package:tweetguess/ui/components/primary_game_button.dart';

import '../../domain/ui_controller/game_ui_controller.dart';
import '../../presentation/bloc/game_bloc.dart';

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
  void handleRoundSkipped(Game game) {
    HapticFeedback.lightImpact();

    if (game.jokersLeft >= 0) {
      StatusAlert.show(
        context,
        duration: const Duration(milliseconds: 1000),
        title: 'Round Skipped',
        blurPower: 10,
        backgroundColor: Colors.white70,
        subtitle: 'Jokers left: ${game.jokersLeft}',
        configuration: const IconConfiguration(icon: Icons.skip_next),
        maxWidth: 260,
      );
    } else {
      StatusAlert.show(
        context,
        duration: const Duration(milliseconds: 1000),
        title: 'No Jokers Left',
        blurPower: 10,
        backgroundColor: Colors.white70,
        configuration: const IconConfiguration(icon: Icons.error_outline),
        maxWidth: 260,
      );
    }
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

      case RoundSkipped():
        {
          handleRoundSkipped(game);
          break;
        }
    }
  }

  @override
  void transitionToNextRound(GameState state) {
    context.go(
      '/game',
      extra: {
        'bloc': GameBloc(state),
        'countdownEnabled': false,
        'transition': TransitionType.nextRound,
      },
    );
  }

  @override
  void transitionToOverviewExit(Game game) {
    getIt<AnalyticsController>().logEndGame();

    context.replace('/game/overview', extra: {
      'game': game,
    },);
  }
}
