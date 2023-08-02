// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tweetguess/ui/components/primary_container.dart';

class UIPrimaryButton extends StatefulWidget {
  const UIPrimaryButton({super.key, required this.text, this.onTap});

  final String text;
  final Function()? onTap;

  @override
  State<UIPrimaryButton> createState() => UIPrimaryButtonState();
}

class UIPrimaryButtonState extends State<UIPrimaryButton> {
  Duration duration = const Duration(milliseconds: 500);
  Color? animationColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: duration,
        decoration: PrimaryContainer.decoration(context)
            .copyWith(color: animationColor),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            widget.text,
          ),
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
