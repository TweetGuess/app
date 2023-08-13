import 'dart:io';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

enum AppLanguage { de, en, system }

extension NameX on AppLanguage {
  String get langName {
    switch (this) {
      case AppLanguage.de:
        return 'languages.german'.tr();
      case AppLanguage.en:
        return 'languages.english'.tr();
      case AppLanguage.system:
        return 'languages.auto'.tr();
      default:
        return '';
    }
  }

  Locale? getLocale() {
    switch (this) {
      case AppLanguage.de:
        return const Locale('de');
      case AppLanguage.en:
        return const Locale('en');
      case AppLanguage.system:
        return Locale(Platform.localeName.split("_")[0]);
    }
  }
}
