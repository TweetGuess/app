import 'package:flutter/material.dart';

import '../bloc/game/game_state.dart';
import '../bloc/game/models/game.dart';

abstract class GameController {
  /// Used to disable taps during score count animation
  final ValueNotifier<bool> ignoringTapsNotifier = ValueNotifier(false);

  void pauseGame() {}

  void handleWrongAnswer(Game game, int answerInd) {}

  void handleRoundFinished(
      RoundFinished inProgressState, Game game, int answerInd) {}
}
