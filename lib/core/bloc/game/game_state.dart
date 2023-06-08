import 'package:freezed_annotation/freezed_annotation.dart';

import 'models/game.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
sealed class GameState with _$GameState {
  const GameState._();
  factory GameState.initial() = GameInitial;
  factory GameState.inProgress(Game game) = GameInProgress;

  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);
}
