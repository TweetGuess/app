import 'package:flutter/material.dart';

import '../bloc/game/game_event.dart';
import '../bloc/game/game_state.dart';
import '../bloc/game/models/game.dart';

abstract class GameController {
  GameController(this.context);

  /// Used to disable taps during score count animation
  final ValueNotifier<bool> ignoringTapsNotifier = ValueNotifier(false);

  late BuildContext context;

  void pauseGame() {}

  void resumeGame() {}

  void handleRoundFinished(
    RoundFinished inProgressState,
    Game game,
  ) {}

  void transitionToNextRound(
    NextRound event,
    GameState state,
  ) {}

  void transitionToOverviewExit(
    Game game,
  ) {}
}
