import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';
import 'package:tweetguess/core/bloc/game/utils/game.dart';
import 'package:tweetguess/core/controller/primary_game_controller.dart';

import '../../../ui/utils/routes/game_transitions.dart';
import '../../../widgets/game/game.dart';
import '../../controller/game_controller.dart';
import 'game_event.dart';
import 'models/game.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  late GameController gameController;

  GameBloc([GameState? initial]) : super(initial ?? GameState.initial()) {
    on<StartGame>(handleGameStart);
    on<PauseGame>(handlePauseGame);
    on<ExitGame>(handleExitGame);
    on<NextRound>(handleNextRound);

    /// In-Progress Game Events
    on<NoTimeLeft>(handleGameEvent);
    on<NoLivesLeft>(handleGameEvent);

    on<SubmitRound>(handleSubmitRound);
  }

  // To initialize the GameController
  void init(
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

  void handlePauseGame(PauseGame event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        emit(GameState.roundInProgress(game.copyWith(isPaused: true)));
      },
    );
  }

  FutureOr<void> handleExitGame(ExitGame event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        emit(GameState.terminal(game, event));
      },
    );
  }

  FutureOr<void> handleNextRound(NextRound event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        var currentRound = game.currentRound;

        var nextRound =
            GameUtils.generateRound([...game.pastRounds, currentRound]);

        // Activate transition to next round
        Navigator.of(event.context).pushReplacement(
          NextRoundTransition(
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

        close();
      },
    );
  }

  void handleSubmitRound(SubmitRound event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        if (game.currentRound.rightAnswer == event.answer) {
          emit(
            GameState.roundInProgress(
              game,
            ),
          );

          gameController.handleRoundFinished(
            RoundRightAnswer(selectedAnswer: event.answer),
            game,
            event.answer,
          );
        } else {
          emit(
            GameState.roundInProgress(
              game,
            ),
          );

          gameController.handleWrongAnswer(
            game,
            event.answer,
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
}
