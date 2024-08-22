// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserStatistics _$UserStatisticsFromJson(Map<String, dynamic> json) {
  return _UserStatistics.fromJson(json);
}

/// @nodoc
mixin _$UserStatistics {
  int get pointsEarned => throw _privateConstructorUsedError;
  int get gamesPlayed => throw _privateConstructorUsedError;
  int get roundsPlayed => throw _privateConstructorUsedError;
  double get accuracyOfGuesses => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;

  /// Serializes this UserStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatisticsCopyWith<UserStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatisticsCopyWith<$Res> {
  factory $UserStatisticsCopyWith(
          UserStatistics value, $Res Function(UserStatistics) then) =
      _$UserStatisticsCopyWithImpl<$Res, UserStatistics>;
  @useResult
  $Res call(
      {int pointsEarned,
      int gamesPlayed,
      int roundsPlayed,
      double accuracyOfGuesses,
      int longestStreak});
}

/// @nodoc
class _$UserStatisticsCopyWithImpl<$Res, $Val extends UserStatistics>
    implements $UserStatisticsCopyWith<$Res> {
  _$UserStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointsEarned = null,
    Object? gamesPlayed = null,
    Object? roundsPlayed = null,
    Object? accuracyOfGuesses = null,
    Object? longestStreak = null,
  }) {
    return _then(_value.copyWith(
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
      gamesPlayed: null == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      roundsPlayed: null == roundsPlayed
          ? _value.roundsPlayed
          : roundsPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      accuracyOfGuesses: null == accuracyOfGuesses
          ? _value.accuracyOfGuesses
          : accuracyOfGuesses // ignore: cast_nullable_to_non_nullable
              as double,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatisticsImplCopyWith<$Res>
    implements $UserStatisticsCopyWith<$Res> {
  factory _$$UserStatisticsImplCopyWith(_$UserStatisticsImpl value,
          $Res Function(_$UserStatisticsImpl) then) =
      __$$UserStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pointsEarned,
      int gamesPlayed,
      int roundsPlayed,
      double accuracyOfGuesses,
      int longestStreak});
}

/// @nodoc
class __$$UserStatisticsImplCopyWithImpl<$Res>
    extends _$UserStatisticsCopyWithImpl<$Res, _$UserStatisticsImpl>
    implements _$$UserStatisticsImplCopyWith<$Res> {
  __$$UserStatisticsImplCopyWithImpl(
      _$UserStatisticsImpl _value, $Res Function(_$UserStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointsEarned = null,
    Object? gamesPlayed = null,
    Object? roundsPlayed = null,
    Object? accuracyOfGuesses = null,
    Object? longestStreak = null,
  }) {
    return _then(_$UserStatisticsImpl(
      null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
      null == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      null == roundsPlayed
          ? _value.roundsPlayed
          : roundsPlayed // ignore: cast_nullable_to_non_nullable
              as int,
      null == accuracyOfGuesses
          ? _value.accuracyOfGuesses
          : accuracyOfGuesses // ignore: cast_nullable_to_non_nullable
              as double,
      null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatisticsImpl implements _UserStatistics {
  _$UserStatisticsImpl(
      [this.pointsEarned = 0,
      this.gamesPlayed = 0,
      this.roundsPlayed = 0,
      this.accuracyOfGuesses = 0,
      this.longestStreak = 0]);

  factory _$UserStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatisticsImplFromJson(json);

  @override
  @JsonKey()
  final int pointsEarned;
  @override
  @JsonKey()
  final int gamesPlayed;
  @override
  @JsonKey()
  final int roundsPlayed;
  @override
  @JsonKey()
  final double accuracyOfGuesses;
  @override
  @JsonKey()
  final int longestStreak;

  @override
  String toString() {
    return 'UserStatistics(pointsEarned: $pointsEarned, gamesPlayed: $gamesPlayed, roundsPlayed: $roundsPlayed, accuracyOfGuesses: $accuracyOfGuesses, longestStreak: $longestStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatisticsImpl &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned) &&
            (identical(other.gamesPlayed, gamesPlayed) ||
                other.gamesPlayed == gamesPlayed) &&
            (identical(other.roundsPlayed, roundsPlayed) ||
                other.roundsPlayed == roundsPlayed) &&
            (identical(other.accuracyOfGuesses, accuracyOfGuesses) ||
                other.accuracyOfGuesses == accuracyOfGuesses) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pointsEarned, gamesPlayed,
      roundsPlayed, accuracyOfGuesses, longestStreak);

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatisticsImplCopyWith<_$UserStatisticsImpl> get copyWith =>
      __$$UserStatisticsImplCopyWithImpl<_$UserStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatisticsImplToJson(
      this,
    );
  }
}

abstract class _UserStatistics implements UserStatistics {
  factory _UserStatistics(
      [final int pointsEarned,
      final int gamesPlayed,
      final int roundsPlayed,
      final double accuracyOfGuesses,
      final int longestStreak]) = _$UserStatisticsImpl;

  factory _UserStatistics.fromJson(Map<String, dynamic> json) =
      _$UserStatisticsImpl.fromJson;

  @override
  int get pointsEarned;
  @override
  int get gamesPlayed;
  @override
  int get roundsPlayed;
  @override
  double get accuracyOfGuesses;
  @override
  int get longestStreak;

  /// Create a copy of UserStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatisticsImplCopyWith<_$UserStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
