import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
class GameState with _$GameState {
  factory GameState() = _GameState;

  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);
}
