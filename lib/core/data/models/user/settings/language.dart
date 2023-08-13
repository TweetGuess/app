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
}
