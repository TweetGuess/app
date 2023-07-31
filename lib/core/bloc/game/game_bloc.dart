import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';
import 'package:tweetguess/core/bloc/game/utils/game.dart';
import 'package:tweetguess/core/controller/primary_game_controller.dart';

import '../../controller/game_controller.dart';
import 'game_event.dart';
import 'models/game.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  late GameController gameController;

  GameBloc([GameState? initial]) : super(initial ?? GameState.initial()) {
    // Handle game state changes
    on<StartGame>(handleGameState);
    on<PauseGame>(handleGameState);
    on<ExitGame>(handleGameState);

    // Handle game events
    on<NoTimeLeft>(handleGameEvent);
    on<NoLivesLeft>(handleGameEvent);

    // Handle round changes
    on<NextRound>(handleNextRound);
    on<SubmitRound>(handleSubmitRound);
  }

  /// Mainly to initialize the GameController in every round
  /// Might be able to optimize this using only constant Key's and ValueNotifiers.
  void initRound(
    BuildContext context, {
    required GlobalKey<CircularCountDownTimerState> gameTimerKey,
    required ValueNotifier<int?> gameScoreNotifier,
  }) {
    // TODO: Add injection
    gameController = PrimaryGameController(
      context,
      gameScoreNotifier: gameScoreNotifier,
      gameTimerKey: gameTimerKey,
      bloc: this,
    );
  }

  FutureOr<void> handleGameStart(StartGame event, Emitter<GameState> emit) {
    state.whenOrNull(
      initial: () => emit(
        GameState.roundInProgress(Game()),
      ),
      roundInProgress: (game) {
        if (game.isPaused) {
          emit(GameState.roundInProgress(game.copyWith(isPaused: false)));
        }
      },
    );
  }

  FutureOr<void> handleNextRound(NextRound event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        var currentRound = game.currentRound;

        var nextRound =
            GameUtils.generateRound([...game.pastRounds, currentRound]);

        gameController.transitionToNextRound(
          event,
          game,
          currentRound,
          nextRound,
        );

        close();
      },
    );
  }

  void handleSubmitRound(SubmitRound event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        if (game.currentRound.rightAnswer == event.answer) {
          gameController.handleRoundFinished(
            RoundRightAnswer(selectedAnswer: event.answer),
            game,
            event.answer,
          );
          emit(
            GameState.roundInProgress(
              game,
            ),
          );
        } else {
          gameController.handleWrongAnswer(
            game,
            event.answer,
          );
          emit(
            GameState.roundInProgress(
              game,
            ),
          );
        }
      },
    );
  }

  FutureOr<void> handleGameEvent(GameEvent event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        event.whenOrNull(
          noTimeLeft: () {
            if (game.lives - 1 > 0) {
              emit(
                GameState.roundInProgress(
                  game.copyWith(lives: game.lives - 1),
                ),
              );
            } else {
              emit(GameState.terminal(game, event));
            }
          },
          noLivesLeft: () {
            emit(GameState.terminal(game, event));
          },
        );
      },
    );
  }

  FutureOr<void> handleGameState(GameEvent event, Emitter<GameState> emit) {
    state.whenOrNull(
      initial: () {
        if (event is StartGame) {
          emit(GameState.roundInProgress(Game()));
        }
      },
      roundInProgress: (game) {
        if (event is StartGame) {
          if (game.isPaused) {
            emit(GameState.roundInProgress(game.copyWith(isPaused: false)));
          }
        } else if (event is PauseGame) {
          emit(GameState.roundInProgress(game.copyWith(isPaused: true)));
        } else if (event is ExitGame) {
          emit(GameState.terminal(game, event));
        }
      },
    );
  }
}
