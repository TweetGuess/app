// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';

class UIPrimaryButton extends StatefulWidget {
  const UIPrimaryButton({
    super.key,
    required this.text,
    this.onTap,
    this.height,
  });

  final String text;
  final Function()? onTap;
  final double? height;

  @override
  State<UIPrimaryButton> createState() => UIPrimaryButtonState();
}

class UIPrimaryButtonState extends State<UIPrimaryButton> {
  Duration duration = const Duration(milliseconds: 500);
  Color? animationColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      child: SizedBox(
          height: widget.height, child: Center(child: Text(widget.text)),),
    );
  }
}
