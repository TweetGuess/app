// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) {
  return _UserSettings.fromJson(json);
}

/// @nodoc
mixin _$UserSettings {
  ThemeMode get appearance => throw _privateConstructorUsedError;
  AppLanguage get language => throw _privateConstructorUsedError;
  GameplaySettings get gameplaySettings => throw _privateConstructorUsedError;

  /// Serializes this UserSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSettingsCopyWith<UserSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSettingsCopyWith<$Res> {
  factory $UserSettingsCopyWith(
          UserSettings value, $Res Function(UserSettings) then) =
      _$UserSettingsCopyWithImpl<$Res, UserSettings>;
  @useResult
  $Res call(
      {ThemeMode appearance,
      AppLanguage language,
      GameplaySettings gameplaySettings});

  $GameplaySettingsCopyWith<$Res> get gameplaySettings;
}

/// @nodoc
class _$UserSettingsCopyWithImpl<$Res, $Val extends UserSettings>
    implements $UserSettingsCopyWith<$Res> {
  _$UserSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appearance = null,
    Object? language = null,
    Object? gameplaySettings = null,
  }) {
    return _then(_value.copyWith(
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
      gameplaySettings: null == gameplaySettings
          ? _value.gameplaySettings
          : gameplaySettings // ignore: cast_nullable_to_non_nullable
              as GameplaySettings,
    ) as $Val);
  }

  /// Create a copy of UserSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameplaySettingsCopyWith<$Res> get gameplaySettings {
    return $GameplaySettingsCopyWith<$Res>(_value.gameplaySettings, (value) {
      return _then(_value.copyWith(gameplaySettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSettingsImplCopyWith<$Res>
    implements $UserSettingsCopyWith<$Res> {
  factory _$$UserSettingsImplCopyWith(
          _$UserSettingsImpl value, $Res Function(_$UserSettingsImpl) then) =
      __$$UserSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode appearance,
      AppLanguage language,
      GameplaySettings gameplaySettings});

  @override
  $GameplaySettingsCopyWith<$Res> get gameplaySettings;
}

/// @nodoc
class __$$UserSettingsImplCopyWithImpl<$Res>
    extends _$UserSettingsCopyWithImpl<$Res, _$UserSettingsImpl>
    implements _$$UserSettingsImplCopyWith<$Res> {
  __$$UserSettingsImplCopyWithImpl(
      _$UserSettingsImpl _value, $Res Function(_$UserSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appearance = null,
    Object? language = null,
    Object? gameplaySettings = null,
  }) {
    return _then(_$UserSettingsImpl(
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
      gameplaySettings: null == gameplaySettings
          ? _value.gameplaySettings
          : gameplaySettings // ignore: cast_nullable_to_non_nullable
              as GameplaySettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSettingsImpl implements _UserSettings {
  _$UserSettingsImpl(
      {this.appearance = ThemeMode.system,
      this.language = AppLanguage.system,
      this.gameplaySettings = const GameplaySettings()});

  factory _$UserSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSettingsImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode appearance;
  @override
  @JsonKey()
  final AppLanguage language;
  @override
  @JsonKey()
  final GameplaySettings gameplaySettings;

  @override
  String toString() {
    return 'UserSettings(appearance: $appearance, language: $language, gameplaySettings: $gameplaySettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSettingsImpl &&
            (identical(other.appearance, appearance) ||
                other.appearance == appearance) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.gameplaySettings, gameplaySettings) ||
                other.gameplaySettings == gameplaySettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appearance, language, gameplaySettings);

  /// Create a copy of UserSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSettingsImplCopyWith<_$UserSettingsImpl> get copyWith =>
      __$$UserSettingsImplCopyWithImpl<_$UserSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSettingsImplToJson(
      this,
    );
  }
}

abstract class _UserSettings implements UserSettings {
  factory _UserSettings(
      {final ThemeMode appearance,
      final AppLanguage language,
      final GameplaySettings gameplaySettings}) = _$UserSettingsImpl;

  factory _UserSettings.fromJson(Map<String, dynamic> json) =
      _$UserSettingsImpl.fromJson;

  @override
  ThemeMode get appearance;
  @override
  AppLanguage get language;
  @override
  GameplaySettings get gameplaySettings;

  /// Create a copy of UserSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSettingsImplCopyWith<_$UserSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
