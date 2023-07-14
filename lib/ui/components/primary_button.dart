// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';

import 'package:flutter/material.dart';

class UIPrimaryButton extends StatefulWidget {
  const UIPrimaryButton({super.key, required this.text});

  final String text;

  @override
  State<UIPrimaryButton> createState() => UIPrimaryButtonState();
}

class UIPrimaryButtonState extends State<UIPrimaryButton> {
  Duration duration = const Duration(milliseconds: 500);
  Color? animationColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ).copyWith(color: animationColor),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          widget.text,
        ),
      ),
    );
  }
}

extension GameEffects on UIPrimaryButtonState {
  void lightUpRed() => _lightUp(Colors.red);
  void lightUpGreen() => _lightUp(Colors.green);

  void _lightUp(
    Color color, [
    Duration duration = const Duration(milliseconds: 300),
  ]) {
    setState(() {
      animationColor = color;
    });
    Timer(duration, () {
      setState(() {
        animationColor = null;
      });
    });
  }
}
