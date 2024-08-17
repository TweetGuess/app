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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$GameplaySettingsImplCopyWith<$Res>
    implements $GameplaySettingsCopyWith<$Res> {
  factory _$$GameplaySettingsImplCopyWith(_$GameplaySettingsImpl value,
          $Res Function(_$GameplaySettingsImpl) then) =
      __$$GameplaySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic enableImagesInTweets});
}

/// @nodoc
class __$$GameplaySettingsImplCopyWithImpl<$Res>
    extends _$GameplaySettingsCopyWithImpl<$Res, _$GameplaySettingsImpl>
    implements _$$GameplaySettingsImplCopyWith<$Res> {
  __$$GameplaySettingsImplCopyWithImpl(_$GameplaySettingsImpl _value,
      $Res Function(_$GameplaySettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableImagesInTweets = freezed,
  }) {
    return _then(_$GameplaySettingsImpl(
      enableImagesInTweets: freezed == enableImagesInTweets
          ? _value.enableImagesInTweets!
          : enableImagesInTweets,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameplaySettingsImpl implements _GameplaySettings {
  const _$GameplaySettingsImpl({this.enableImagesInTweets = true});

  factory _$GameplaySettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameplaySettingsImplFromJson(json);

  @override
  @JsonKey()
  final dynamic enableImagesInTweets;

  @override
  String toString() {
    return 'GameplaySettings(enableImagesInTweets: $enableImagesInTweets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameplaySettingsImpl &&
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
  _$$GameplaySettingsImplCopyWith<_$GameplaySettingsImpl> get copyWith =>
      __$$GameplaySettingsImplCopyWithImpl<_$GameplaySettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameplaySettingsImplToJson(
      this,
    );
  }
}

abstract class _GameplaySettings implements GameplaySettings {
  const factory _GameplaySettings({final dynamic enableImagesInTweets}) =
      _$GameplaySettingsImpl;

  factory _GameplaySettings.fromJson(Map<String, dynamic> json) =
      _$GameplaySettingsImpl.fromJson;

  @override
  dynamic get enableImagesInTweets;
  @override
  @JsonKey(ignore: true)
  _$$GameplaySettingsImplCopyWith<_$GameplaySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
