import 'package:flutter/material.dart';

extension ColorBrightness on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  Color withColor(Color color) {
    return Color.alphaBlend(withOpacity(1.0), color.withOpacity(1.0));
  }

  Color getContrastingColor() {
    final luminance = (0.299 * red + 0.587 * green + 0.114 * blue) / 255;
    return luminance > 0.5 ? Colors.black : Colors.white;
  }
}
