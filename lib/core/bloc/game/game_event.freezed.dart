// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartGameCopyWith<$Res> {
  factory _$$StartGameCopyWith(
          _$StartGame value, $Res Function(_$StartGame) then) =
      __$$StartGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartGame>
    implements _$$StartGameCopyWith<$Res> {
  __$$StartGameCopyWithImpl(
      _$StartGame _value, $Res Function(_$StartGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartGame implements StartGame {
  _$StartGame();

  @override
  String toString() {
    return 'GameEvent.startGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return startGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return startGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class StartGame implements GameEvent {
  factory StartGame() = _$StartGame;
}

/// @nodoc
abstract class _$$PauseGameCopyWith<$Res> {
  factory _$$PauseGameCopyWith(
          _$PauseGame value, $Res Function(_$PauseGame) then) =
      __$$PauseGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PauseGame>
    implements _$$PauseGameCopyWith<$Res> {
  __$$PauseGameCopyWithImpl(
      _$PauseGame _value, $Res Function(_$PauseGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseGame implements PauseGame {
  _$PauseGame();

  @override
  String toString() {
    return 'GameEvent.pauseGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return pauseGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return pauseGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (pauseGame != null) {
      return pauseGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return pauseGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return pauseGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (pauseGame != null) {
      return pauseGame(this);
    }
    return orElse();
  }
}

abstract class PauseGame implements GameEvent {
  factory PauseGame() = _$PauseGame;
}

/// @nodoc
abstract class _$$ExitGameCopyWith<$Res> {
  factory _$$ExitGameCopyWith(
          _$ExitGame value, $Res Function(_$ExitGame) then) =
      __$$ExitGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ExitGame>
    implements _$$ExitGameCopyWith<$Res> {
  __$$ExitGameCopyWithImpl(_$ExitGame _value, $Res Function(_$ExitGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExitGame implements ExitGame {
  _$ExitGame();

  @override
  String toString() {
    return 'GameEvent.exitGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return exitGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return exitGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (exitGame != null) {
      return exitGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return exitGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return exitGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (exitGame != null) {
      return exitGame(this);
    }
    return orElse();
  }
}

abstract class ExitGame implements GameEvent {
  factory ExitGame() = _$ExitGame;
}

/// @nodoc
abstract class _$$SubmitRoundCopyWith<$Res> {
  factory _$$SubmitRoundCopyWith(
          _$SubmitRound value, $Res Function(_$SubmitRound) then) =
      __$$SubmitRoundCopyWithImpl<$Res>;
  @useResult
  $Res call({int answer});
}

/// @nodoc
class __$$SubmitRoundCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SubmitRound>
    implements _$$SubmitRoundCopyWith<$Res> {
  __$$SubmitRoundCopyWithImpl(
      _$SubmitRound _value, $Res Function(_$SubmitRound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$SubmitRound(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubmitRound implements SubmitRound {
  _$SubmitRound({required this.answer});

  @override
  final int answer;

  @override
  String toString() {
    return 'GameEvent.submitRound(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRound &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRoundCopyWith<_$SubmitRound> get copyWith =>
      __$$SubmitRoundCopyWithImpl<_$SubmitRound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return submitRound(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return submitRound?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (submitRound != null) {
      return submitRound(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return submitRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return submitRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (submitRound != null) {
      return submitRound(this);
    }
    return orElse();
  }
}

abstract class SubmitRound implements GameEvent {
  factory SubmitRound({required final int answer}) = _$SubmitRound;

  int get answer;
  @JsonKey(ignore: true)
  _$$SubmitRoundCopyWith<_$SubmitRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextRoundCopyWith<$Res> {
  factory _$$NextRoundCopyWith(
          _$NextRound value, $Res Function(_$NextRound) then) =
      __$$NextRoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextRoundCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$NextRound>
    implements _$$NextRoundCopyWith<$Res> {
  __$$NextRoundCopyWithImpl(
      _$NextRound _value, $Res Function(_$NextRound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextRound implements NextRound {
  _$NextRound();

  @override
  String toString() {
    return 'GameEvent.nextRound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextRound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return nextRound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return nextRound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (nextRound != null) {
      return nextRound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return nextRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return nextRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (nextRound != null) {
      return nextRound(this);
    }
    return orElse();
  }
}

abstract class NextRound implements GameEvent {
  factory NextRound() = _$NextRound;
}

/// @nodoc
abstract class _$$NoTimeLeftCopyWith<$Res> {
  factory _$$NoTimeLeftCopyWith(
          _$NoTimeLeft value, $Res Function(_$NoTimeLeft) then) =
      __$$NoTimeLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoTimeLeftCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$NoTimeLeft>
    implements _$$NoTimeLeftCopyWith<$Res> {
  __$$NoTimeLeftCopyWithImpl(
      _$NoTimeLeft _value, $Res Function(_$NoTimeLeft) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoTimeLeft implements NoTimeLeft {
  _$NoTimeLeft();

  @override
  String toString() {
    return 'GameEvent.noTimeLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoTimeLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return noTimeLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return noTimeLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (noTimeLeft != null) {
      return noTimeLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return noTimeLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return noTimeLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (noTimeLeft != null) {
      return noTimeLeft(this);
    }
    return orElse();
  }
}

abstract class NoTimeLeft implements GameEvent {
  factory NoTimeLeft() = _$NoTimeLeft;
}

/// @nodoc
abstract class _$$NoLivesLeftCopyWith<$Res> {
  factory _$$NoLivesLeftCopyWith(
          _$NoLivesLeft value, $Res Function(_$NoLivesLeft) then) =
      __$$NoLivesLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoLivesLeftCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$NoLivesLeft>
    implements _$$NoLivesLeftCopyWith<$Res> {
  __$$NoLivesLeftCopyWithImpl(
      _$NoLivesLeft _value, $Res Function(_$NoLivesLeft) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoLivesLeft implements NoLivesLeft {
  _$NoLivesLeft();

  @override
  String toString() {
    return 'GameEvent.noLivesLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoLivesLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return noLivesLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startGame,
    TResult? Function()? pauseGame,
    TResult? Function()? exitGame,
    TResult? Function(int answer)? submitRound,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return noLivesLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startGame,
    TResult Function()? pauseGame,
    TResult Function()? exitGame,
    TResult Function(int answer)? submitRound,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if (noLivesLeft != null) {
      return noLivesLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pauseGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(SubmitRound value) submitRound,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) {
    return noLivesLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(SubmitRound value)? submitRound,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) {
    return noLivesLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(SubmitRound value)? submitRound,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (noLivesLeft != null) {
      return noLivesLeft(this);
    }
    return orElse();
  }
}

abstract class NoLivesLeft implements GameEvent {
  factory NoLivesLeft() = _$NoLivesLeft;
}
