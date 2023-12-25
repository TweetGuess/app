import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'language.dart';

part '../settings.freezed.dart';
part '../settings.g.dart';

@freezed
class UserSettings with _$UserSettings {
  factory UserSettings({
    @Default(ThemeMode.system) ThemeMode appearance,
    @Default(AppLanguage.system) AppLanguage language,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
