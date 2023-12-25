import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gameplay.dart';
import 'language.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class UserSettings with _$UserSettings {
  factory UserSettings({
    @Default(ThemeMode.system) ThemeMode appearance,
    @Default(AppLanguage.system) AppLanguage language,
    @Default(GameplaySettings()) GameplaySettings gameplaySettings,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
