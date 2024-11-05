// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UIPrimaryButton extends StatefulWidget {
  const UIPrimaryButton({
    super.key,
    required this.text,
    this.onTap,
    this.height,
    this.icon,
  });

  final String text;
  final Function()? onTap;
  final double? height;
  final Icon? icon;

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
        height: widget.height,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) ...[
                SizedBox(
                  height: 15, // Adjust the height to match the text size
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: widget.icon,
                  ),
                ),
                const Gap(8),
              ],
              Text(widget.text),
            ],
          ),
        ),
      ),
    );
  }
}
