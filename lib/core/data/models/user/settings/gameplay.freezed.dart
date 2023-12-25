// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gameplay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameplaySettings _$GameplaySettingsFromJson(Map<String, dynamic> json) {
  return _GameplaySettings.fromJson(json);
}

/// @nodoc
mixin _$GameplaySettings {
  dynamic get enableImagesInTweets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameplaySettingsCopyWith<GameplaySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameplaySettingsCopyWith<$Res> {
  factory $GameplaySettingsCopyWith(
          GameplaySettings value, $Res Function(GameplaySettings) then) =
      _$GameplaySettingsCopyWithImpl<$Res, GameplaySettings>;
  @useResult
  $Res call({dynamic enableImagesInTweets});
}

/// @nodoc
class _$GameplaySettingsCopyWithImpl<$Res, $Val extends GameplaySettings>
    implements $GameplaySettingsCopyWith<$Res> {
  _$GameplaySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableImagesInTweets = freezed,
  }) {
    return _then(_value.copyWith(
      enableImagesInTweets: freezed == enableImagesInTweets
          ? _value.enableImagesInTweets
          : enableImagesInTweets // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameplaySettingsCopyWith<$Res>
    implements $GameplaySettingsCopyWith<$Res> {
  factory _$$_GameplaySettingsCopyWith(
          _$_GameplaySettings value, $Res Function(_$_GameplaySettings) then) =
      __$$_GameplaySettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic enableImagesInTweets});
}

/// @nodoc
class __$$_GameplaySettingsCopyWithImpl<$Res>
    extends _$GameplaySettingsCopyWithImpl<$Res, _$_GameplaySettings>
    implements _$$_GameplaySettingsCopyWith<$Res> {
  __$$_GameplaySettingsCopyWithImpl(
      _$_GameplaySettings _value, $Res Function(_$_GameplaySettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableImagesInTweets = freezed,
  }) {
    return _then(_$_GameplaySettings(
      enableImagesInTweets: freezed == enableImagesInTweets
          ? _value.enableImagesInTweets!
          : enableImagesInTweets,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameplaySettings implements _GameplaySettings {
  const _$_GameplaySettings({this.enableImagesInTweets = true});

  factory _$_GameplaySettings.fromJson(Map<String, dynamic> json) =>
      _$$_GameplaySettingsFromJson(json);

  @override
  @JsonKey()
  final dynamic enableImagesInTweets;

  @override
  String toString() {
    return 'GameplaySettings(enableImagesInTweets: $enableImagesInTweets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameplaySettings &&
            const DeepCollectionEquality()
                .equals(other.enableImagesInTweets, enableImagesInTweets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(enableImagesInTweets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameplaySettingsCopyWith<_$_GameplaySettings> get copyWith =>
      __$$_GameplaySettingsCopyWithImpl<_$_GameplaySettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameplaySettingsToJson(
      this,
    );
  }
}

abstract class _GameplaySettings implements GameplaySettings {
  const factory _GameplaySettings({final dynamic enableImagesInTweets}) =
      _$_GameplaySettings;

  factory _GameplaySettings.fromJson(Map<String, dynamic> json) =
      _$_GameplaySettings.fromJson;

  @override
  dynamic get enableImagesInTweets;
  @override
  @JsonKey(ignore: true)
  _$$_GameplaySettingsCopyWith<_$_GameplaySettings> get copyWith =>
      throw _privateConstructorUsedError;
}
