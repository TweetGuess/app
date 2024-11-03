import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/core/controller/shake/shake_controller.dart';
import 'package:tweetguess/core/controller/tilt/tilt_controller.dart';
import 'package:tweetguess/core/services/shake_detection/shake_detection_interface.dart';
import 'package:tweetguess/core/services/tilt_detection/tilt_detection_interface.dart';
import 'package:tweetguess/core/utils/get_it.dart';
import 'package:tweetguess/modules/game/data/const.dart';
import 'package:tweetguess/modules/game/data/ui_controller/primary_game_ui_controller.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_state.dart';
import 'package:tweetguess/modules/game/presentation/bloc/utils/game.dart';
import 'package:tweetguess/ui/extensions/number.dart';

import '../../domain/models/game.dart';
import '../../domain/ui_controller/game_ui_controller.dart';

part 'game_bloc.freezed.dart';
part 'game_event.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  late IGameUIController gameUiController;
  late final ShakeController _shakeController;
  late final TiltController _tiltController;

  GameBloc([GameState? initial]) : super(initial ?? GameState.initial()) {
    // Handle game state changes
    on<StartGame>(_handleGameState);
    on<PauseGame>(_handleGameState);
    on<ExitGame>(_handleGameState);

    // Handle game events
    on<NoTimeLeft>(_handleGameEvent);
    on<NoLivesLeft>(_handleGameEvent);

    // Handle round changes
    on<_SubmitRound>(_handleSubmitRound, transformer: droppable());
    on<UseJoker>(_handleJokerUsage, transformer: droppable());
  }

  FutureOr<void> _handleJokerUsage(
    UseJoker event,
    Emitter<GameState> emit,
  ) async {
    await state.whenOrNull(
      roundInProgress: (game) async {
        if (game.jokersLeft > 0) {
          var newGame = game.copyWith(
            jokersLeft: game.jokersLeft - 1,
          );
          
          emit(
            GameState.roundInProgress(
              newGame,
            ),
          );

          gameUiController.handleRoundFinished(
            RoundSkipped(),
            newGame,
          );

          await Future.delayed(const Duration(milliseconds: 500));

          await _handleNextRound();
        }
      },
    );
  }

  /// Mainly to initialize the GameController in every round
  /// Might be able to optimize this using only constant Key's and ValueNotifiers.
  void initRound(
    BuildContext context, {
    required GlobalKey<CircularCountDownTimerState> gameTimerKey,
  }) {
    // TODO: Add injection
    gameUiController = PrimaryGameUIController(
      context,
      gameTimerKey: gameTimerKey,
      bloc: this,
    );

    // Setup shake gesture
    _setupTiltController();
  }

  // Sets up the tilt gesture that allows the user to skip the round
  void _setupTiltController() async {
    // Have a delay to not have double joker plays after we push to a new screen
    await Future.delayed(const Duration(milliseconds: 1000));

    _tiltController = TiltController(
      tiltService: getIt<ITiltDetectionService>(),
      onTilt: () {
        state.whenOrNull(
          roundInProgress: (game) {
            if (game.jokersLeft > 0 && !game.isPaused) {
              add(GameEvent.useJoker());
            }
          },
        );
      },
    )..initialize();
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

  FutureOr<void> _handleNextRound() async {
    await state.whenOrNull(
      roundInProgress: (game) async {
        if (game.lives == 0) {
          add(GameEvent.exitGame());
        } else {
          var currentRound = game.currentRound;

          var nextRound =
              GameUtils.generateRound([...game.pastRounds, currentRound]);

          gameUiController.transitionToNextRound(
            GameState.roundInProgress(
              game.copyWith(
                pastRounds: [...game.pastRounds, currentRound],
                currentRound: nextRound,
              ),
            ),
          );

          await close();
        }
      },
    );
  }

  FutureOr<void> _handleSubmitRound(
    _SubmitRound event,
    Emitter<GameState> emit,
  ) async {
    // Wait till transition
    await state.whenOrNull(
      roundInProgress: (game) async {
        var answeredRight = false;

        if (game.currentRound.rightAnswer == event.answer) {
          gameUiController.handleRoundFinished(
            RoundRightAnswer(),
            game,
          );

          answeredRight = true;
        } else {
          if (event.answer == GameConstants.NO_TIME_LEFT_EVENT) {
            gameUiController.handleRoundFinished(
              RoundNoTimeLeft(),
              game,
            );
          } else {
            gameUiController.handleRoundFinished(
              RoundWrongAnswer(selectedAnswer: event.answer),
              game,
            );
          }
        }

        await Future.delayed(const Duration(milliseconds: 1000), () {
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

          _handleNextRound();
        });
      },
    );
  }

  int _calculatePointsForNextRound(Game game, bool answeredRight) {
    return (game.points +
            (answeredRight
                ? int.parse(
                    (gameUiController.gameTimerKey.currentState?.time ?? '15'),
                  )
                : GameConstants.MINUS_POINTS))
        .toScore();
  }

  FutureOr<void> _handleGameEvent(GameEvent event, Emitter<GameState> emit) {
    state.whenOrNull(
      roundInProgress: (game) {
        event.whenOrNull(
          noTimeLeft: () {
            add(
              GameEvent.submitRound(
                answer: GameConstants.NO_TIME_LEFT_EVENT,
              ),
            );
          },
          noLivesLeft: () {
            add(GameEvent.exitGame());
          },
        );
      },
    );
  }

  FutureOr<void> _handleGameState(GameEvent event, Emitter<GameState> emit) {
    state.whenOrNull(
      initial: () {
        if (event is StartGame) {
          emit(GameState.roundInProgress(Game()));
        }
      },
      roundInProgress: (game) {
        if (event is StartGame) {
          if (game.isPaused) {
            gameUiController.resumeGame();
          }
        } else if (event is PauseGame) {
          emit(GameState.roundInProgress(game.copyWith(isPaused: true)));

          gameUiController.pauseGame();
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

    gameUiController.transitionToOverviewExit(game);
  }

  @override
  Future<void> close() {
    _tiltController.dispose();
    return super.close();
  }
}
