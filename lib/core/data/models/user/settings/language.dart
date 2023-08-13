import 'dart:io';
import 'dart:ui';

enum AppLanguage { de, en, system }

extension NameX on AppLanguage {
  String get langName {
    switch (this) {
      case AppLanguage.de:
        return 'Deutsch';
      case AppLanguage.en:
        return 'English';
      case AppLanguage.system:
        return 'System';
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
