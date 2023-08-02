import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
  const PrimaryContainer({super.key, required this.child});

  final Widget child;

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
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: child,
      ),
    );
  }
}
