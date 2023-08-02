import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  // Basic game operations
  factory GameEvent.startGame() = StartGame;
  factory GameEvent.pauseGame() = PauseGame;
  factory GameEvent.exitGame() = ExitGame;

  // State-dependent Game Events
  factory GameEvent.submitRound({
    required int answer,
  }) = SubmitRound;
  factory GameEvent.nextRound({
    required int pointDifference,
  }) = NextRound;
  factory GameEvent.noTimeLeft() = NoTimeLeft;
  factory GameEvent.noLivesLeft() = NoLivesLeft;
}
