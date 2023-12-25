import 'package:flutter/material.dart';
import 'package:tweetguess/ui/extensions/color.dart';

class UISettingsToggle extends StatelessWidget {
  const UISettingsToggle({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    required this.iconTint,
    required this.initialValue,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final Function(bool)? onPressed;
  final bool initialValue;
  final Color iconTint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final brightness = MediaQuery.of(context).platformBrightness;

    final tintedIconOpacity = brightness == Brightness.dark ? 0.5 : 0.7;

    final tintedIconBackgroundColor = brightness == Brightness.dark
        ? iconTint.withOpacity(tintedIconOpacity)
        : iconTint.darken(0.3).withOpacity(tintedIconOpacity);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Material(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            color: colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: brightness == Brightness.dark
                      ? tintedIconBackgroundColor
                      : _getIconTint(brightness, colorScheme) ??
                          colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: brightness == Brightness.dark
                      ? _getIconTint(brightness, colorScheme) ??
                          colorScheme.primary
                      : tintedIconBackgroundColor,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Switch(
                value: initialValue,
                onChanged: (value) {
                  onPressed?.call(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color? _getIconTint(Brightness brightness, ColorScheme colorScheme) {
    return brightness == Brightness.dark ? iconTint : iconTint.lighten(0.25);
  }
}
