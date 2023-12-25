// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettings _$$_UserSettingsFromJson(Map<String, dynamic> json) =>
    _$_UserSettings(
      appearance: $enumDecodeNullable(_$ThemeModeEnumMap, json['appearance']) ??
          ThemeMode.system,
      language: $enumDecodeNullable(_$AppLanguageEnumMap, json['language']) ??
          AppLanguage.system,
      gameplaySettings: json['gameplaySettings'] == null
          ? const GameplaySettings()
          : GameplaySettings.fromJson(
              json['gameplaySettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserSettingsToJson(_$_UserSettings instance) =>
    <String, dynamic>{
      'appearance': _$ThemeModeEnumMap[instance.appearance]!,
      'language': _$AppLanguageEnumMap[instance.language]!,
      'gameplaySettings': instance.gameplaySettings,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$AppLanguageEnumMap = {
  AppLanguage.de: 'de',
  AppLanguage.en: 'en',
  AppLanguage.system: 'system',
};
