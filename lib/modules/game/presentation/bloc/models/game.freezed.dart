// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Game {
  int get points => throw _privateConstructorUsedError;
  List<Round> get pastRounds => throw _privateConstructorUsedError;
  int get lives => throw _privateConstructorUsedError;
  bool get isPaused => throw _privateConstructorUsedError;
  Round get currentRound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int points,
      List<Round> pastRounds,
      int lives,
      bool isPaused,
      Round currentRound});

  $RoundCopyWith<$Res> get currentRound;
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? pastRounds = null,
    Object? lives = null,
    Object? isPaused = null,
    Object? currentRound = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      pastRounds: null == pastRounds
          ? _value.pastRounds
          : pastRounds // ignore: cast_nullable_to_non_nullable
              as List<Round>,
      lives: null == lives
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as Round,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoundCopyWith<$Res> get currentRound {
    return $RoundCopyWith<$Res>(_value.currentRound, (value) {
      return _then(_value.copyWith(currentRound: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int points,
      List<Round> pastRounds,
      int lives,
      bool isPaused,
      Round currentRound});

  @override
  $RoundCopyWith<$Res> get currentRound;
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? pastRounds = null,
    Object? lives = null,
    Object? isPaused = null,
    Object? currentRound = null,
  }) {
    return _then(_$GameImpl(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      pastRounds: null == pastRounds
          ? _value._pastRounds
          : pastRounds // ignore: cast_nullable_to_non_nullable
              as List<Round>,
      lives: null == lives
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as Round,
    ));
  }
}

/// @nodoc

class _$GameImpl implements _Game {
  _$GameImpl(
      {this.points = 0,
      final List<Round> pastRounds = const [],
      this.lives = GameConstants.MAX_LIVES,
      this.isPaused = false,
      required this.currentRound})
      : _pastRounds = pastRounds;

  @override
  @JsonKey()
  final int points;
  final List<Round> _pastRounds;
  @override
  @JsonKey()
  List<Round> get pastRounds {
    if (_pastRounds is EqualUnmodifiableListView) return _pastRounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastRounds);
  }

  @override
  @JsonKey()
  final int lives;
  @override
  @JsonKey()
  final bool isPaused;
  @override
  final Round currentRound;

  @override
  String toString() {
    return 'Game._(points: $points, pastRounds: $pastRounds, lives: $lives, isPaused: $isPaused, currentRound: $currentRound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality()
                .equals(other._pastRounds, _pastRounds) &&
            (identical(other.lives, lives) || other.lives == lives) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      points,
      const DeepCollectionEquality().hash(_pastRounds),
      lives,
      isPaused,
      currentRound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);
}

abstract class _Game implements Game {
  factory _Game(
      {final int points,
      final List<Round> pastRounds,
      final int lives,
      final bool isPaused,
      required final Round currentRound}) = _$GameImpl;

  @override
  int get points;
  @override
  List<Round> get pastRounds;
  @override
  int get lives;
  @override
  bool get isPaused;
  @override
  Round get currentRound;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
