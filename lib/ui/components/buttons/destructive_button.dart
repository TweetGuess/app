// lib/ui/components/buttons/destructive_button.dart
import 'package:flutter/material.dart';
import 'package:tweetguess/ui/components/buttons/button.dart';

class UIDestructiveButton extends UIButton {
  const UIDestructiveButton({
    super.key,
    required super.text,
    super.onTap,
    super.height,
    super.icon,
  });

  @override
  State<UIDestructiveButton> createState() => UIDestructiveButtonState();
}

class UIDestructiveButtonState extends UIButtonState<UIDestructiveButton> {
  @override
  ButtonStyle getButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.error,
      foregroundColor: Theme.of(context).colorScheme.onError,
    ).merge(Theme.of(context).elevatedButtonTheme.style);
  }
}
