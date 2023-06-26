import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_event.dart';
import 'models/game.dart';

part 'game_state.freezed.dart';

@freezed
sealed class GameState with _$GameState {
  const GameState._();
  factory GameState.initial() = GameInitial;

  factory GameState.roundInProgress(
    Game game, [
    GameInProgressState? inProgressState,
  ]) = GameRoundInProgress;

  // Passing the event that led to the game ending
  factory GameState.terminal(Game game, GameEvent event) = GameTerminal;
}

/*
  Helper State Class for more fine-grained state-processing
*/

sealed class GameInProgressState {}

class RoundWrongAnswer extends GameInProgressState {
  RoundWrongAnswer({
    required this.selectedAnswer,
  });

  final int selectedAnswer;
}

/* 
  RoundFinished - (Sub-)States
*/
class RoundFinished extends GameInProgressState {}

class RoundRightAnswer extends RoundFinished {
  RoundRightAnswer({
    required this.selectedAnswer,
  });

  final int selectedAnswer;
}

class RoundNoTimeLeft extends RoundFinished {
  RoundNoTimeLeft();
}
