import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/modules/game/controller/primary_game_controller.dart';
import 'package:tweetguess/core/utils/const.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_state.dart';
import 'package:tweetguess/modules/game/presentation/bloc/utils/game.dart';
import 'package:tweetguess/ui/extensions/number.dart';

import '../../controller/game_controller.dart';
import 'game_event.dart';
import 'models/game.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  late GameController gameController;

  /// This is to avoid multiple handleSubmitRounds
  final _submitRoundCompleter = Completer<void>();

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

        if (game.lives == 0) {
          add(GameEvent.exitGame());
        } else {
          gameController.transitionToNextRound(
            event,
            GameState.roundInProgress(
              game.copyWith(
                pastRounds: [...game.pastRounds, currentRound],
                currentRound: nextRound,
              ),
            ),
          );

          close();
        }
      },
    );
  }

  void handleSubmitRound(SubmitRound event, Emitter<GameState> emit) {
    if (_submitRoundCompleter.isCompleted) {
      return;
    }

    /// If we don't process an event then complete the completer so it doesn't happen anymore
    _submitRoundCompleter.complete();

    state.whenOrNull(
      roundInProgress: (game) {
        var answeredRight = false;

        if (game.currentRound.rightAnswer == event.answer) {
          gameController.handleRoundFinished(
            RoundRightAnswer(),
            game,
          );

          answeredRight = true;
        } else {
          if (event.answer == GameConstants.NO_TIME_LEFT_EVENT) {
            gameController.handleRoundFinished(
              RoundNoTimeLeft(),
              game,
            );
          } else {
            gameController.handleRoundFinished(
              RoundWrongAnswer(selectedAnswer: event.answer),
              game,
            );
          }
        }

        emit(
          GameState.roundInProgress(
            game.copyWith(
              currentRound:
                  game.currentRound.copyWith(answeredRight: answeredRight),
              points: _calculatePointsForNextRound(game, answeredRight),
              lives: !answeredRight ? game.lives - 1 : game.lives,
            ),
          ),
        );
      },
    );
  }

  int _calculatePointsForNextRound(Game game, bool answeredRight) {
    return (game.points +
            (answeredRight
                ? int.parse(
                    (gameController.gameTimerKey.currentState?.time ?? '15'),
                  )
                : GameConstants.MINUS_POINTS))
        .toScore();
  }

  FutureOr<void> handleGameEvent(GameEvent event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        event.whenOrNull(
          noTimeLeft: () {
            add(GameEvent.submitRound(answer: -1));
          },
          noLivesLeft: () {
            add(GameEvent.exitGame());
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
            gameController.resumeGame();
          }
        } else if (event is PauseGame) {
          emit(GameState.roundInProgress(game.copyWith(isPaused: true)));

          gameController.pauseGame();
        } else if (event is ExitGame) {
          _handleGameEnd(game);

          close();
        }
      },
    );
  }

  void _handleGameEnd(Game game) {
    // Update Stats
    GetIt.I<UserBloc>().add(UserUpdateStats.fromGame(game: game));

    gameController.transitionToOverviewExit(game);
  }
}
