// lib/ui/components/buttons/primary_button.dart
import 'package:flutter/material.dart';
import 'package:tweetguess/ui/components/buttons/button.dart';

class UIPrimaryButton extends UIButton {
  const UIPrimaryButton({
    super.key,
    required super.text,
    super.onTap,
    super.height,
    super.icon,
  });

  @override
  State<UIPrimaryButton> createState() => UIPrimaryButtonState();
}

class UIPrimaryButtonState extends UIButtonState<UIPrimaryButton> {
  @override
  ButtonStyle getButtonStyle(BuildContext context) {
    return Theme.of(context).elevatedButtonTheme.style ?? const ButtonStyle();
  }
}
