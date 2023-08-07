import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_bloc.dart';
import '../../bloc/game_event.dart';
import '../../../../../core/controller/game_controller.dart';

class GameWrapper extends StatelessWidget {
  final GameController controller;

  final Widget child;

  const GameWrapper({super.key, required this.controller, required this.child});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.ignoringTapsNotifier,
      builder: (context, ignoringTaps, child) {
        return WillPopScope(
          onWillPop: () async {
            context.read<GameBloc>().add(PauseGame());

            // If we are not ignoring taps, and the onWillPop callback returns true then we want to exit the game.
            if (!ignoringTaps && (await _onWillPopCallback(context))) {
              context.read<GameBloc>().add(ExitGame());
            } else {
              // If we are not leaving, start the game again.
              context.read<GameBloc>().add(StartGame());
            }

            return false;
          },
          child: IgnorePointer(ignoring: ignoringTaps, child: child),
        );
      },
      child: child,
    );
  }

  Future<bool> _onWillPopCallback(BuildContext context) async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to exit the Game'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
