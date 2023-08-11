// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserUpdateStats {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)
        $default, {
    required TResult Function(Game game) fromGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult? Function(Game game)? fromGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult Function(Game game)? fromGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserUpdateStats value) $default, {
    required TResult Function(_FromRounds value) fromGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserUpdateStats value)? $default, {
    TResult? Function(_FromRounds value)? fromGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserUpdateStats value)? $default, {
    TResult Function(_FromRounds value)? fromGame,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateStatsCopyWith<$Res> {
  factory $UserUpdateStatsCopyWith(
          UserUpdateStats value, $Res Function(UserUpdateStats) then) =
      _$UserUpdateStatsCopyWithImpl<$Res, UserUpdateStats>;
}

/// @nodoc
class _$UserUpdateStatsCopyWithImpl<$Res, $Val extends UserUpdateStats>
    implements $UserUpdateStatsCopyWith<$Res> {
  _$UserUpdateStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserUpdateStatsCopyWith<$Res> {
  factory _$$_UserUpdateStatsCopyWith(
          _$_UserUpdateStats value, $Res Function(_$_UserUpdateStats) then) =
      __$$_UserUpdateStatsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int pointsEarned,
      int roundsPlayed,
      double accuracyOfGuesses,
      int longestStreak});
}

/// @nodoc
class __$$_UserUpdateStatsCopyWithImpl<$Res>
    extends _$UserUpdateStatsCopyWithImpl<$Res, _$_UserUpdateStats>
    implements _$$_UserUpdateStatsCopyWith<$Res> {
  __$$_UserUpdateStatsCopyWithImpl(
      _$_UserUpdateStats _value, $Res Function(_$_UserUpdateStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointsEarned = null,
    Object? roundsPlayed = null,
    Object? accuracyOfGuesses = null,
    Object? longestStreak = null,
  }) {
    return _then(_$_UserUpdateStats(
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
    ));
  }
}

/// @nodoc

class _$_UserUpdateStats implements _UserUpdateStats {
  _$_UserUpdateStats(
      {required this.pointsEarned,
      required this.roundsPlayed,
      required this.accuracyOfGuesses,
      required this.longestStreak});

  @override
  final int pointsEarned;
  @override
  final int roundsPlayed;
  @override
  final double accuracyOfGuesses;
  @override
  final int longestStreak;

  @override
  String toString() {
    return 'UserUpdateStats(pointsEarned: $pointsEarned, roundsPlayed: $roundsPlayed, accuracyOfGuesses: $accuracyOfGuesses, longestStreak: $longestStreak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUpdateStats &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned) &&
            (identical(other.roundsPlayed, roundsPlayed) ||
                other.roundsPlayed == roundsPlayed) &&
            (identical(other.accuracyOfGuesses, accuracyOfGuesses) ||
                other.accuracyOfGuesses == accuracyOfGuesses) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pointsEarned, roundsPlayed,
      accuracyOfGuesses, longestStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUpdateStatsCopyWith<_$_UserUpdateStats> get copyWith =>
      __$$_UserUpdateStatsCopyWithImpl<_$_UserUpdateStats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)
        $default, {
    required TResult Function(Game game) fromGame,
  }) {
    return $default(
        pointsEarned, roundsPlayed, accuracyOfGuesses, longestStreak);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult? Function(Game game)? fromGame,
  }) {
    return $default?.call(
        pointsEarned, roundsPlayed, accuracyOfGuesses, longestStreak);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult Function(Game game)? fromGame,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          pointsEarned, roundsPlayed, accuracyOfGuesses, longestStreak);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserUpdateStats value) $default, {
    required TResult Function(_FromRounds value) fromGame,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserUpdateStats value)? $default, {
    TResult? Function(_FromRounds value)? fromGame,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserUpdateStats value)? $default, {
    TResult Function(_FromRounds value)? fromGame,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateStats implements UserUpdateStats {
  factory _UserUpdateStats(
      {required final int pointsEarned,
      required final int roundsPlayed,
      required final double accuracyOfGuesses,
      required final int longestStreak}) = _$_UserUpdateStats;

  int get pointsEarned;
  int get roundsPlayed;
  double get accuracyOfGuesses;
  int get longestStreak;
  @JsonKey(ignore: true)
  _$$_UserUpdateStatsCopyWith<_$_UserUpdateStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FromRoundsCopyWith<$Res> {
  factory _$$_FromRoundsCopyWith(
          _$_FromRounds value, $Res Function(_$_FromRounds) then) =
      __$$_FromRoundsCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$_FromRoundsCopyWithImpl<$Res>
    extends _$UserUpdateStatsCopyWithImpl<$Res, _$_FromRounds>
    implements _$$_FromRoundsCopyWith<$Res> {
  __$$_FromRoundsCopyWithImpl(
      _$_FromRounds _value, $Res Function(_$_FromRounds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$_FromRounds(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$_FromRounds implements _FromRounds {
  _$_FromRounds({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'UserUpdateStats.fromGame(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FromRounds &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FromRoundsCopyWith<_$_FromRounds> get copyWith =>
      __$$_FromRoundsCopyWithImpl<_$_FromRounds>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)
        $default, {
    required TResult Function(Game game) fromGame,
  }) {
    return fromGame(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult? Function(Game game)? fromGame,
  }) {
    return fromGame?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pointsEarned, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult Function(Game game)? fromGame,
    required TResult orElse(),
  }) {
    if (fromGame != null) {
      return fromGame(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserUpdateStats value) $default, {
    required TResult Function(_FromRounds value) fromGame,
  }) {
    return fromGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserUpdateStats value)? $default, {
    TResult? Function(_FromRounds value)? fromGame,
  }) {
    return fromGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserUpdateStats value)? $default, {
    TResult Function(_FromRounds value)? fromGame,
    required TResult orElse(),
  }) {
    if (fromGame != null) {
      return fromGame(this);
    }
    return orElse();
  }
}

abstract class _FromRounds implements UserUpdateStats {
  factory _FromRounds({required final Game game}) = _$_FromRounds;

  Game get game;
  @JsonKey(ignore: true)
  _$$_FromRoundsCopyWith<_$_FromRounds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserResetStats {}

/// @nodoc
abstract class $UserResetStatsCopyWith<$Res> {
  factory $UserResetStatsCopyWith(
          UserResetStats value, $Res Function(UserResetStats) then) =
      _$UserResetStatsCopyWithImpl<$Res, UserResetStats>;
}

/// @nodoc
class _$UserResetStatsCopyWithImpl<$Res, $Val extends UserResetStats>
    implements $UserResetStatsCopyWith<$Res> {
  _$UserResetStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserResetStatsCopyWith<$Res> {
  factory _$$_UserResetStatsCopyWith(
          _$_UserResetStats value, $Res Function(_$_UserResetStats) then) =
      __$$_UserResetStatsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserResetStatsCopyWithImpl<$Res>
    extends _$UserResetStatsCopyWithImpl<$Res, _$_UserResetStats>
    implements _$$_UserResetStatsCopyWith<$Res> {
  __$$_UserResetStatsCopyWithImpl(
      _$_UserResetStats _value, $Res Function(_$_UserResetStats) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserResetStats implements _UserResetStats {
  _$_UserResetStats();

  @override
  String toString() {
    return 'UserResetStats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserResetStats);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UserResetStats implements UserResetStats {
  factory _UserResetStats() = _$_UserResetStats;
}
