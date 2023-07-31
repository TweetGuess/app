import 'package:flutter/material.dart';

import '../bloc/game/game_event.dart';
import '../bloc/game/game_state.dart';
import '../bloc/game/models/game.dart';
import '../bloc/game/models/round.dart';

abstract class GameController {
  GameController(this.context);

  /// Used to disable taps during score count animation
  final ValueNotifier<bool> ignoringTapsNotifier = ValueNotifier(false);

  late BuildContext context;

  void pauseGame() {}

  void handleWrongAnswer(Game game, int answerInd) {}

  void handleRoundFinished(
    RoundFinished inProgressState,
    Game game,
    int answerInd,
  ) {}

  void transitionToNextRound(
    NextRound event,
    Game game,
    Round currentRound,
    Round nextRound,
  ) {}

  void transitionToOverviewExit(
    Game game,
  ) {}
}
