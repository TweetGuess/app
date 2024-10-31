part of 'game_bloc.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  // Basic game operations
  factory GameEvent.startGame() = StartGame;
  factory GameEvent.pauseGame() = PauseGame;
  factory GameEvent.exitGame() = ExitGame;

  // State-dependent Game Events
  factory GameEvent.submitRound({
    required int answer,
  }) = _SubmitRound;

  factory GameEvent.noTimeLeft() = NoTimeLeft;
  factory GameEvent.noLivesLeft() = NoLivesLeft;
}
