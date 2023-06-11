import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';
part 'game_event.g.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  factory GameEvent() = _GameEvent;
  // Basic game operations
  factory GameEvent.startGame() = StartGame;
  factory GameEvent.pauseGame() = PauseGame;
  factory GameEvent.exitGame() = ExitGame;

  // State-dependent Game Events
  factory GameEvent.submitRound({
    required int answer,
  }) = SubmitRound;
  factory GameEvent.nextRound({
    required int timeLeft,
  }) = NextRound;
  factory GameEvent.noTimeLeft() = NoTimeLeft;
  factory GameEvent.noLivesLeft() = NoLivesLeft;

  factory GameEvent.fromJson(Map<String, dynamic> json) =>
      _$GameEventFromJson(json);
}
