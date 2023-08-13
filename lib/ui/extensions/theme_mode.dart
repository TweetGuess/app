import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension NameX on ThemeMode {
  String get langName {
    switch (this) {
      case ThemeMode.dark:
        return "settings.general.appearance.options.dark".tr();
      case ThemeMode.light:
        return "settings.general.appearance.options.light".tr();
      case ThemeMode.system:
        return "settings.general.appearance.options.auto".tr();
      default:
        return '';
    }
  }
}
