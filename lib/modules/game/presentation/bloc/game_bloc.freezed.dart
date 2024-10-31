// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
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
    required TResult Function(_SubmitRound value) submitRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pauseGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(_SubmitRound value)? submitRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pauseGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(_SubmitRound value)? submitRound,
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

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartGameImplCopyWith<$Res> {
  factory _$$StartGameImplCopyWith(
          _$StartGameImpl value, $Res Function(_$StartGameImpl) then) =
      __$$StartGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartGameImpl>
    implements _$$StartGameImplCopyWith<$Res> {
  __$$StartGameImplCopyWithImpl(
      _$StartGameImpl _value, $Res Function(_$StartGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartGameImpl implements StartGame {
  _$StartGameImpl();

  @override
  String toString() {
    return 'GameEvent.startGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartGameImpl);
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
    required TResult Function(_SubmitRound value) submitRound,
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
    TResult? Function(_SubmitRound value)? submitRound,
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
    TResult Function(_SubmitRound value)? submitRound,
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
  factory StartGame() = _$StartGameImpl;
}

/// @nodoc
abstract class _$$PauseGameImplCopyWith<$Res> {
  factory _$$PauseGameImplCopyWith(
          _$PauseGameImpl value, $Res Function(_$PauseGameImpl) then) =
      __$$PauseGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PauseGameImpl>
    implements _$$PauseGameImplCopyWith<$Res> {
  __$$PauseGameImplCopyWithImpl(
      _$PauseGameImpl _value, $Res Function(_$PauseGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseGameImpl implements PauseGame {
  _$PauseGameImpl();

  @override
  String toString() {
    return 'GameEvent.pauseGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseGameImpl);
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
    required TResult Function(_SubmitRound value) submitRound,
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
    TResult? Function(_SubmitRound value)? submitRound,
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
    TResult Function(_SubmitRound value)? submitRound,
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
  factory PauseGame() = _$PauseGameImpl;
}

/// @nodoc
abstract class _$$ExitGameImplCopyWith<$Res> {
  factory _$$ExitGameImplCopyWith(
          _$ExitGameImpl value, $Res Function(_$ExitGameImpl) then) =
      __$$ExitGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ExitGameImpl>
    implements _$$ExitGameImplCopyWith<$Res> {
  __$$ExitGameImplCopyWithImpl(
      _$ExitGameImpl _value, $Res Function(_$ExitGameImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExitGameImpl implements ExitGame {
  _$ExitGameImpl();

  @override
  String toString() {
    return 'GameEvent.exitGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitGameImpl);
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
    required TResult Function(_SubmitRound value) submitRound,
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
    TResult? Function(_SubmitRound value)? submitRound,
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
    TResult Function(_SubmitRound value)? submitRound,
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
  factory ExitGame() = _$ExitGameImpl;
}

/// @nodoc
abstract class _$$SubmitRoundImplCopyWith<$Res> {
  factory _$$SubmitRoundImplCopyWith(
          _$SubmitRoundImpl value, $Res Function(_$SubmitRoundImpl) then) =
      __$$SubmitRoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int answer});
}

/// @nodoc
class __$$SubmitRoundImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SubmitRoundImpl>
    implements _$$SubmitRoundImplCopyWith<$Res> {
  __$$SubmitRoundImplCopyWithImpl(
      _$SubmitRoundImpl _value, $Res Function(_$SubmitRoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$SubmitRoundImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubmitRoundImpl implements _SubmitRound {
  _$SubmitRoundImpl({required this.answer});

  @override
  final int answer;

  @override
  String toString() {
    return 'GameEvent.submitRound(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRoundImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRoundImplCopyWith<_$SubmitRoundImpl> get copyWith =>
      __$$SubmitRoundImplCopyWithImpl<_$SubmitRoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startGame,
    required TResult Function() pauseGame,
    required TResult Function() exitGame,
    required TResult Function(int answer) submitRound,
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
    required TResult Function(_SubmitRound value) submitRound,
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
    TResult? Function(_SubmitRound value)? submitRound,
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
    TResult Function(_SubmitRound value)? submitRound,
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

abstract class _SubmitRound implements GameEvent {
  factory _SubmitRound({required final int answer}) = _$SubmitRoundImpl;

  int get answer;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitRoundImplCopyWith<_$SubmitRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoTimeLeftImplCopyWith<$Res> {
  factory _$$NoTimeLeftImplCopyWith(
          _$NoTimeLeftImpl value, $Res Function(_$NoTimeLeftImpl) then) =
      __$$NoTimeLeftImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoTimeLeftImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$NoTimeLeftImpl>
    implements _$$NoTimeLeftImplCopyWith<$Res> {
  __$$NoTimeLeftImplCopyWithImpl(
      _$NoTimeLeftImpl _value, $Res Function(_$NoTimeLeftImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoTimeLeftImpl implements NoTimeLeft {
  _$NoTimeLeftImpl();

  @override
  String toString() {
    return 'GameEvent.noTimeLeft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoTimeLeftImpl);
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
    required TResult Function(_SubmitRound value) submitRound,
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
    TResult? Function(_SubmitRound value)? submitRound,
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
    TResult Function(_SubmitRound value)? submitRound,
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
  factory NoTimeLeft() = _$NoTimeLeftImpl;
}

/// @nodoc
abstract class _$$NoLivesLeftImplCopyWith<$Res> {
  factory _$$NoLivesLeftImplCopyWith(
          _$NoLivesLeftImpl value, $Res Function(_$NoLivesLeftImpl) then) =
      __$$NoLivesLeftImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoLivesLeftImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$NoLivesLeftImpl>
    implements _$$NoLivesLeftImplCopyWith<$Res> {
  __$$NoLivesLeftImplCopyWithImpl(
      _$NoLivesLeftImpl _value, $Res Function(_$NoLivesLeftImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoLivesLeftImpl implements NoLivesLeft {
  _$NoLivesLeftImpl();

  @override
  String toString() {
    return 'GameEvent.noLivesLeft()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoLivesLeftImpl);
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
    required TResult Function(_SubmitRound value) submitRound,
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
    TResult? Function(_SubmitRound value)? submitRound,
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
    TResult Function(_SubmitRound value)? submitRound,
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
  factory NoLivesLeft() = _$NoLivesLeftImpl;
}
