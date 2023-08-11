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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStatistics _$UserStatisticsFromJson(Map<String, dynamic> json) {
  return _UserStatistics.fromJson(json);
}

/// @nodoc
mixin _$UserStatistics {
  int get pointsEarned => throw _privateConstructorUsedError;
  int get roundsPlayed => throw _privateConstructorUsedError;
  double get accuracyOfGuesses => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointsEarned = null,
    Object? roundsPlayed = null,
    Object? accuracyOfGuesses = null,
    Object? longestStreak = null,
  }) {
    return _then(_value.copyWith(
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_UserStatisticsCopyWith<$Res>
    implements $UserStatisticsCopyWith<$Res> {
  factory _$$_UserStatisticsCopyWith(
          _$_UserStatistics value, $Res Function(_$_UserStatistics) then) =
      __$$_UserStatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pointsEarned,
      int roundsPlayed,
      double accuracyOfGuesses,
      int longestStreak});
}

/// @nodoc
class __$$_UserStatisticsCopyWithImpl<$Res>
    extends _$UserStatisticsCopyWithImpl<$Res, _$_UserStatistics>
    implements _$$_UserStatisticsCopyWith<$Res> {
  __$$_UserStatisticsCopyWithImpl(
      _$_UserStatistics _value, $Res Function(_$_UserStatistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointsEarned = null,
    Object? roundsPlayed = null,
    Object? accuracyOfGuesses = null,
    Object? longestStreak = null,
  }) {
    return _then(_$_UserStatistics(
      null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
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
class _$_UserStatistics implements _UserStatistics {
  _$_UserStatistics(
      [this.pointsEarned = 0,
      this.roundsPlayed = 0,
      this.accuracyOfGuesses = 0,
      this.longestStreak = 0]);

  factory _$_UserStatistics.fromJson(Map<String, dynamic> json) =>
      _$$_UserStatisticsFromJson(json);

  @override
  @JsonKey()
  final int pointsEarned;
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
    return 'UserStatistics(pointsEarned: $pointsEarned, roundsPlayed: $roundsPlayed, accuracyOfGuesses: $accuracyOfGuesses, longestStreak: $longestStreak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStatistics &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned) &&
            (identical(other.roundsPlayed, roundsPlayed) ||
                other.roundsPlayed == roundsPlayed) &&
            (identical(other.accuracyOfGuesses, accuracyOfGuesses) ||
                other.accuracyOfGuesses == accuracyOfGuesses) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pointsEarned, roundsPlayed,
      accuracyOfGuesses, longestStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStatisticsCopyWith<_$_UserStatistics> get copyWith =>
      __$$_UserStatisticsCopyWithImpl<_$_UserStatistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStatisticsToJson(
      this,
    );
  }
}

abstract class _UserStatistics implements UserStatistics {
  factory _UserStatistics(
      [final int pointsEarned,
      final int roundsPlayed,
      final double accuracyOfGuesses,
      final int longestStreak]) = _$_UserStatistics;

  factory _UserStatistics.fromJson(Map<String, dynamic> json) =
      _$_UserStatistics.fromJson;

  @override
  int get pointsEarned;
  @override
  int get roundsPlayed;
  @override
  double get accuracyOfGuesses;
  @override
  int get longestStreak;
  @override
  @JsonKey(ignore: true)
  _$$_UserStatisticsCopyWith<_$_UserStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}
