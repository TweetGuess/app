import 'package:flutter/material.dart';

import '../../core/bloc/game/models/game.dart';
import '../../ui/utils/routes/circular_transition_route.dart';

class OverviewExitScreen extends StatelessWidget {
  const OverviewExitScreen({super.key, required this.game});

  final Game game;

  static Route route({
    bool countdownEnabled = true,
    required Game game,
    Duration transitionDuration = const Duration(milliseconds: 600),
  }) {
    return CircularTransitionRoute(
      page: OverviewExitScreen(game: game),
      settings: const RouteSettings(name: "/game/overview"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
    );
  }
}
