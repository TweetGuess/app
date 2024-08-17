import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../presentation/bloc/game_event.dart';
import '../presentation/bloc/game_state.dart';
import '../presentation/bloc/models/game.dart';

abstract class GameController {
  GameController(this.context,
      {required this.gameScoreNotifier, required this.gameTimerKey});

  /// Used to disable taps during score count animation
  final ValueNotifier<bool> ignoringTapsNotifier = ValueNotifier(false);

  /// Used to access the TimerController to pause, resume & stop the timer
  GlobalKey<CircularCountDownTimerState> gameTimerKey;

  /// Used to update game score after we get feedback on the answer
  final ValueNotifier<int?> gameScoreNotifier;

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
