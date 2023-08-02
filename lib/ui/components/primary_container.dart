import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
  const PrimaryContainer(
      {super.key, required this.child, this.backgroundColor, this.height});

  final Widget child;
  final Color? backgroundColor;
  final double? height;

  static get decoration => (BuildContext context) {
        return BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        );
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            backgroundColor ?? Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      height: height,
      padding: const EdgeInsets.all(20),
      child: Center(
        child: child,
      ),
    );
  }
}