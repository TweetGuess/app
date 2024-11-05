// lib/ui/components/buttons/base_button.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

abstract class UIButton extends StatefulWidget {
  const UIButton({
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
}

abstract class UIButtonState<T extends UIButton> extends State<T> {
  Duration get duration => const Duration(milliseconds: 500);
  Color? animationColor;

  ButtonStyle getButtonStyle(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getButtonStyle(context),
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
                  height: 15,
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
