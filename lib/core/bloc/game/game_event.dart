import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';
part 'game_event.g.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  factory GameEvent() = _GameEvent;
  // Basic game operations
  factory GameEvent.startGame() = StartGame;
    factory GameEvent.pausGame() = PauseGame;
  factory GameEvent.exitGame() = ExitGame;
  // State-dependent Game Events
  factory GameEvent.nextRound() = NextRound;
  factory GameEvent.noTimeLeft() = NoTimeLeft;
  factory GameEvent.noLivesLeft() = NoLivesLeft;
  factory GameEvent.gameTick() = GameTick;

  factory GameEvent.fromJson(Map<String, dynamic> json) =>
      _$GameEventFromJson(json);
}
