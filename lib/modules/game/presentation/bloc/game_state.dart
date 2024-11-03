import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_bloc.dart';

import '../../domain/models/game.dart';

part 'game_state.freezed.dart';

@freezed
sealed class GameState with _$GameState {
  const GameState._();
  factory GameState.initial() = GameInitial;

  factory GameState.roundInProgress(
    Game game,
  ) = GameRoundInProgress;

  // Passing the event that led to the game ending
  factory GameState.terminal(Game game, GameEvent event) = GameTerminal;
}

/*
  Helper State Class for more fine-grained state-processing (in regards to game effects)
  /// Effectively for propagating Game-Related Events to the UI
*/

sealed class GameInProgressState {}

/* 
  RoundFinished - (Sub-)States
*/
sealed class RoundFinished extends GameInProgressState {}

class RoundRightAnswer extends RoundFinished {
  RoundRightAnswer();
}

class RoundWrongAnswer extends RoundFinished {
  RoundWrongAnswer({
    required this.selectedAnswer,
  });

  final int selectedAnswer;
}

class RoundNoTimeLeft extends RoundFinished {
  RoundNoTimeLeft();
}


class RoundSkipped extends RoundFinished {
  RoundSkipped();
}
