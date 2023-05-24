import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tweetguess/core/bloc/game/game_state.dart';

import 'game_event.dart';
import 'models/game.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState.initial()) {
    on<StartGame>(handleGameStart);
    on<GameTick>(handleGameTick);
  }

  FutureOr<void> handleGameStart(StartGame event, Emitter<GameState> emit) {
    state.when(
      initial: () => emit(
        GameState.inProgress(Game()),
      ),
      inProgress: (game) {
        if (game.isPaused) {
          emit(GameState.inProgress(game.copyWith(isPaused: false)));
        }
      },
    );
  }

  void handleGameTick(GameTick event, Emitter<GameState> emit) {
    state.when(
      initial: () => null,
      inProgress: (game) => emit(
        GameState.inProgress(game.copyWith(timeLeft: game.timeLeft - 1)),
      ),
    );
  }
}
