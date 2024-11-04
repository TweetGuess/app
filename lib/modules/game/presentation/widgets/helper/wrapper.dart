import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/game_bloc.dart';
import '../../../domain/ui_controller/game_ui_controller.dart';

class GameWrapper extends StatelessWidget {
  final IGameUIController controller;

  final Widget child;

  const GameWrapper({super.key, required this.controller, required this.child});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.ignoringTapsNotifier,
      builder: (context, ignoringTaps, child) {
        return PopScope(
          onPopInvokedWithResult: (bool didPop, Object? result) async {
            context.read<GameBloc>().add(PauseGame());

            // If we are not ignoring taps, and the onWillPop callback returns true then we want to exit the game.
            if (!ignoringTaps && (await _onWillPopCallback(context))) {
              context.read<GameBloc>().add(ExitGame());
            } else {
              // If we are not leaving, start the game again.
              context.read<GameBloc>().add(StartGame());
            }
          },
          child: IgnorePointer(ignoring: ignoringTaps, child: child),
        );
      },
      child: child,
    );
  }

  Future<bool> _onWillPopCallback(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('game.exit-dialog.title'.tr()),
        content: Text('game.exit-dialog.content'.tr()),
        actions: <Widget>[
          TextButton(
            onPressed: () => context.pop(false),
            child: Text("global.no".tr()),
          ),
          TextButton(
            onPressed: () => context.pop(true),
            child: Text("global.yes".tr()),
          ),
        ],
      ),
    ) ?? false;
  }
}
