import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_event.dart';
import 'models/game.dart';

part 'game_state.freezed.dart';

@freezed
sealed class GameState with _$GameState {
  const GameState._();
  factory GameState.initial() = GameInitial;

  factory GameState.roundInProgress(Game game) = GameRoundInProgress;

  factory GameState.roundFinished(Game game) = GameRoundFinished;

  // Passing the event that led to the game ending
  factory GameState.terminal(Game game, GameEvent event) = GameTerminal;
}
