import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';
import 'package:tweetguess/core/bloc/game/utils/game.dart';
import 'package:tweetguess/core/presentation/effect_controller/effect_controller.dart';

import '../../../ui/utils/routes/game_transitions.dart';
import '../../../widgets/game/game.dart';
import 'game_event.dart';
import 'models/game.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  late GameEffectController effectController;

  GameBloc([GameState? initial]) : super(initial ?? GameState.initial()) {
    on<StartGame>(handleGameStart);
    on<PauseGame>(handlePauseGame);
    on<ExitGame>(handleExitGame);
    on<NextRound>(handleNextRound);
    on<NoTimeLeft>(handleNoTimeLeft);
    on<NoLivesLeft>(handleNoLivesLeft);
    on<SubmitRound>(handleSubmitRound);
  }

  FutureOr<void> handleGameStart(StartGame event, Emitter<GameState> emit) {
    state.whenOrNull(
      initial: () => emit(
        GameState.roundInProgress(Game()),
      ),
      roundInProgress: (game, _) {
        if (game.isPaused) {
          emit(GameState.roundInProgress(game.copyWith(isPaused: false)));
        }
      },
    );
  }

  void handlePauseGame(PauseGame event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game, _) {
        emit(GameState.roundInProgress(game.copyWith(isPaused: true)));
      },
    );
  }

  FutureOr<void> handleExitGame(ExitGame event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game, _) {
        emit(GameState.terminal(game, event));
      },
    );
  }

  FutureOr<void> handleNextRound(NextRound event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game, _) {
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

  FutureOr<void> handleNoTimeLeft(NoTimeLeft event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game, roundInProgress) {
        if (game.lives - 1 > 0) {
          emit(
            GameState.roundInProgress(
              game.copyWith(lives: game.lives - 1),
              roundInProgress,
            ),
          );
        } else {
          emit(GameState.terminal(game, event));
        }
      },
    );
  }

  FutureOr<void> handleNoLivesLeft(
    NoLivesLeft event,
    Emitter<GameState> emit,
  ) {
    state.whenOrNull(
      roundInProgress: (game, _) {
        emit(GameState.terminal(game, event));
      },
    );
  }

  void handleSubmitRound(SubmitRound event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game, inProgressState) {
        if (game.currentRound.rightAnswer == event.answer) {
          emit(
            GameState.roundInProgress(
              game,
              RoundRightAnswer(selectedAnswer: event.answer),
            ),
          );
        } else {
          emit(
            GameState.roundInProgress(
              game,
              RoundWrongAnswer(selectedAnswer: event.answer),
            ),
          );
        }
      },
    );
  }
}
