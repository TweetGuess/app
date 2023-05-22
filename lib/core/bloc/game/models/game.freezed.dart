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

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  int get points => throw _privateConstructorUsedError;
  List<String> get usedTweets => throw _privateConstructorUsedError;
  int get lives => throw _privateConstructorUsedError;
  int get timeLeft => throw _privateConstructorUsedError;
  Round get currentRound => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      List<String> usedTweets,
      int lives,
      int timeLeft,
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
    Object? usedTweets = null,
    Object? lives = null,
    Object? timeLeft = null,
    Object? currentRound = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      usedTweets: null == usedTweets
          ? _value.usedTweets
          : usedTweets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lives: null == lives
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$_GameCopyWith(_$_Game value, $Res Function(_$_Game) then) =
      __$$_GameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int points,
      List<String> usedTweets,
      int lives,
      int timeLeft,
      Round currentRound});

  @override
  $RoundCopyWith<$Res> get currentRound;
}

/// @nodoc
class __$$_GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res, _$_Game>
    implements _$$_GameCopyWith<$Res> {
  __$$_GameCopyWithImpl(_$_Game _value, $Res Function(_$_Game) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? usedTweets = null,
    Object? lives = null,
    Object? timeLeft = null,
    Object? currentRound = null,
  }) {
    return _then(_$_Game(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      usedTweets: null == usedTweets
          ? _value._usedTweets
          : usedTweets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lives: null == lives
          ? _value.lives
          : lives // ignore: cast_nullable_to_non_nullable
              as int,
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
      currentRound: null == currentRound
          ? _value.currentRound
          : currentRound // ignore: cast_nullable_to_non_nullable
              as Round,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Game implements _Game {
  _$_Game(
      {this.points = 0,
      final List<String> usedTweets = const [],
      this.lives = 3,
      this.timeLeft = 30,
      required this.currentRound})
      : _usedTweets = usedTweets;

  factory _$_Game.fromJson(Map<String, dynamic> json) => _$$_GameFromJson(json);

  @override
  @JsonKey()
  final int points;
  final List<String> _usedTweets;
  @override
  @JsonKey()
  List<String> get usedTweets {
    if (_usedTweets is EqualUnmodifiableListView) return _usedTweets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usedTweets);
  }

  @override
  @JsonKey()
  final int lives;
  @override
  @JsonKey()
  final int timeLeft;
  @override
  final Round currentRound;

  @override
  String toString() {
    return 'Game._(points: $points, usedTweets: $usedTweets, lives: $lives, timeLeft: $timeLeft, currentRound: $currentRound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Game &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality()
                .equals(other._usedTweets, _usedTweets) &&
            (identical(other.lives, lives) || other.lives == lives) &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft) &&
            (identical(other.currentRound, currentRound) ||
                other.currentRound == currentRound));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      points,
      const DeepCollectionEquality().hash(_usedTweets),
      lives,
      timeLeft,
      currentRound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameCopyWith<_$_Game> get copyWith =>
      __$$_GameCopyWithImpl<_$_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  factory _Game(
      {final int points,
      final List<String> usedTweets,
      final int lives,
      final int timeLeft,
      required final Round currentRound}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  int get points;
  @override
  List<String> get usedTweets;
  @override
  int get lives;
  @override
  int get timeLeft;
  @override
  Round get currentRound;
  @override
  @JsonKey(ignore: true)
  _$$_GameCopyWith<_$_Game> get copyWith => throw _privateConstructorUsedError;
}
