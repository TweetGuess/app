import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';
part 'game_event.g.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  factory GameEvent() = _GameEvent;
  // Basic game operations
  factory GameEvent.startGame() = _StartGame;
  factory GameEvent.exitGame() = _ExitGame;
  // State-dependent Game Events
  factory GameEvent.nextRound() = _NextRound;
  factory GameEvent.noTimeLeft() = _NoTimeLeft;
  factory GameEvent.noLivesLeft() = _NoLivesLeft;

  factory GameEvent.fromJson(Map<String, dynamic> json) =>
      _$GameEventFromJson(json);
}
