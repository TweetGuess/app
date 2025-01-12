import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/ui_controller/game_ui_controller.dart';
import '../../bloc/game_bloc.dart';

class GameWrapper extends StatefulWidget {
  final IGameUIController controller;
  final Widget child;

  const GameWrapper({super.key, required this.controller, required this.child});

  @override
  State<GameWrapper> createState() => _GameWrapperState();
}

class _GameWrapperState extends State<GameWrapper> with WidgetsBindingObserver {
  bool _isDialogShowing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      // Pause the game when app goes to background
      context.read<GameBloc>().add(PauseGame());
    } else if (state == AppLifecycleState.resumed) {
      // When app comes back to foreground, show exit dialog if not already showing
      if (!_isDialogShowing) {
        _handleAppResume();
      }
    }
  }

  Future<void> _handleAppResume() async {
    _isDialogShowing = true;
    if (!widget.controller.ignoringTapsNotifier.value &&
        (await _onWillPopCallback(context))) {
      if (mounted) {
        context.read<GameBloc>().add(ExitGame());
      }
    } else {
      if (mounted) {
        context.read<GameBloc>().add(StartGame());
      }
    }
    if (mounted) {
      _isDialogShowing = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: widget.controller.ignoringTapsNotifier,
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
      child: widget.child,
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
        ) ??
        false;
  }
}
