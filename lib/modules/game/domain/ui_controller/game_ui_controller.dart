import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_bloc.dart';

import '../../presentation/bloc/game_state.dart';
import '../models/game.dart';

/// A base controller class that handles UI-related game operations and transitions.
///
/// This controller is responsible for managing UI related state and transitions between
/// different game states like pausing, resuming, handling round completion, and
/// navigating between rounds.
abstract class IGameUIController {
  IGameUIController(this.context,
      {required this.gameTimerKey, required this.bloc});

  /// Used to disable taps during score count animation
  final ValueNotifier<bool> ignoringTapsNotifier = ValueNotifier(false);

  /// Used to access the TimerController to pause, resume & stop the timer
  GlobalKey<CircularCountDownTimerState> gameTimerKey;

  final GameBloc bloc;

  late BuildContext context;

  void pauseGame() {}

  void resumeGame() {}

  void handleRoundSkipped(Game game) {}

  void handleRoundFinished(
    RoundFinished finishedState,
    Game game,
  ) {}

  void transitionToNextRound(
    GameState state,
  ) {}

  void transitionToOverviewExit(
    Game game,
  ) {}
}
