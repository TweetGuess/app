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

GameEvent _$GameEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _GameEvent.fromJson(json);
    case 'startGame':
      return _StartGame.fromJson(json);
    case 'exitGame':
      return _ExitGame.fromJson(json);
    case 'nextRound':
      return _NextRound.fromJson(json);
    case 'noTimeLeft':
      return _NoTimeLeft.fromJson(json);
    case 'noLivesLeft':
      return _NoLivesLeft.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'GameEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$$_GameEventCopyWith<$Res> {
  factory _$$_GameEventCopyWith(
          _$_GameEvent value, $Res Function(_$_GameEvent) then) =
      __$$_GameEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GameEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_GameEvent>
    implements _$$_GameEventCopyWith<$Res> {
  __$$_GameEventCopyWithImpl(
      _$_GameEvent _value, $Res Function(_$_GameEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_GameEvent implements _GameEvent {
  _$_GameEvent({final String? $type}) : $type = $type ?? 'default';

  factory _$_GameEvent.fromJson(Map<String, dynamic> json) =>
      _$$_GameEventFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GameEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameEventToJson(
      this,
    );
  }
}

abstract class _GameEvent implements GameEvent {
  factory _GameEvent() = _$_GameEvent;

  factory _GameEvent.fromJson(Map<String, dynamic> json) =
      _$_GameEvent.fromJson;
}

/// @nodoc
abstract class _$$_StartGameCopyWith<$Res> {
  factory _$$_StartGameCopyWith(
          _$_StartGame value, $Res Function(_$_StartGame) then) =
      __$$_StartGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_StartGame>
    implements _$$_StartGameCopyWith<$Res> {
  __$$_StartGameCopyWithImpl(
      _$_StartGame _value, $Res Function(_$_StartGame) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_StartGame implements _StartGame {
  _$_StartGame({final String? $type}) : $type = $type ?? 'startGame';

  factory _$_StartGame.fromJson(Map<String, dynamic> json) =>
      _$$_StartGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.startGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartGame);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return startGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return startGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
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
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartGameToJson(
      this,
    );
  }
}

abstract class _StartGame implements GameEvent {
  factory _StartGame() = _$_StartGame;

  factory _StartGame.fromJson(Map<String, dynamic> json) =
      _$_StartGame.fromJson;
}

/// @nodoc
abstract class _$$_ExitGameCopyWith<$Res> {
  factory _$$_ExitGameCopyWith(
          _$_ExitGame value, $Res Function(_$_ExitGame) then) =
      __$$_ExitGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExitGameCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_ExitGame>
    implements _$$_ExitGameCopyWith<$Res> {
  __$$_ExitGameCopyWithImpl(
      _$_ExitGame _value, $Res Function(_$_ExitGame) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ExitGame implements _ExitGame {
  _$_ExitGame({final String? $type}) : $type = $type ?? 'exitGame';

  factory _$_ExitGame.fromJson(Map<String, dynamic> json) =>
      _$$_ExitGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.exitGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExitGame);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return exitGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return exitGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
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
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) {
    return exitGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) {
    return exitGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (exitGame != null) {
      return exitGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExitGameToJson(
      this,
    );
  }
}

abstract class _ExitGame implements GameEvent {
  factory _ExitGame() = _$_ExitGame;

  factory _ExitGame.fromJson(Map<String, dynamic> json) = _$_ExitGame.fromJson;
}

/// @nodoc
abstract class _$$_NextRoundCopyWith<$Res> {
  factory _$$_NextRoundCopyWith(
          _$_NextRound value, $Res Function(_$_NextRound) then) =
      __$$_NextRoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextRoundCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_NextRound>
    implements _$$_NextRoundCopyWith<$Res> {
  __$$_NextRoundCopyWithImpl(
      _$_NextRound _value, $Res Function(_$_NextRound) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_NextRound implements _NextRound {
  _$_NextRound({final String? $type}) : $type = $type ?? 'nextRound';

  factory _$_NextRound.fromJson(Map<String, dynamic> json) =>
      _$$_NextRoundFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.nextRound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextRound);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return nextRound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return nextRound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
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
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) {
    return nextRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) {
    return nextRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (nextRound != null) {
      return nextRound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NextRoundToJson(
      this,
    );
  }
}

abstract class _NextRound implements GameEvent {
  factory _NextRound() = _$_NextRound;

  factory _NextRound.fromJson(Map<String, dynamic> json) =
      _$_NextRound.fromJson;
}

/// @nodoc
abstract class _$$_NoTimeLeftCopyWith<$Res> {
  factory _$$_NoTimeLeftCopyWith(
          _$_NoTimeLeft value, $Res Function(_$_NoTimeLeft) then) =
      __$$_NoTimeLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoTimeLeftCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_NoTimeLeft>
    implements _$$_NoTimeLeftCopyWith<$Res> {
  __$$_NoTimeLeftCopyWithImpl(
      _$_NoTimeLeft _value, $Res Function(_$_NoTimeLeft) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_NoTimeLeft implements _NoTimeLeft {
  _$_NoTimeLeft({final String? $type}) : $type = $type ?? 'noTimeLeft';

  factory _$_NoTimeLeft.fromJson(Map<String, dynamic> json) =>
      _$$_NoTimeLeftFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.noTimeLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoTimeLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return noTimeLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return noTimeLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
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
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) {
    return noTimeLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) {
    return noTimeLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (noTimeLeft != null) {
      return noTimeLeft(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoTimeLeftToJson(
      this,
    );
  }
}

abstract class _NoTimeLeft implements GameEvent {
  factory _NoTimeLeft() = _$_NoTimeLeft;

  factory _NoTimeLeft.fromJson(Map<String, dynamic> json) =
      _$_NoTimeLeft.fromJson;
}

/// @nodoc
abstract class _$$_NoLivesLeftCopyWith<$Res> {
  factory _$$_NoLivesLeftCopyWith(
          _$_NoLivesLeft value, $Res Function(_$_NoLivesLeft) then) =
      __$$_NoLivesLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoLivesLeftCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_NoLivesLeft>
    implements _$$_NoLivesLeftCopyWith<$Res> {
  __$$_NoLivesLeftCopyWithImpl(
      _$_NoLivesLeft _value, $Res Function(_$_NoLivesLeft) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_NoLivesLeft implements _NoLivesLeft {
  _$_NoLivesLeft({final String? $type}) : $type = $type ?? 'noLivesLeft';

  factory _$_NoLivesLeft.fromJson(Map<String, dynamic> json) =>
      _$$_NoLivesLeftFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.noLivesLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoLivesLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
  }) {
    return noLivesLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
  }) {
    return noLivesLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? exitGame,
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
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_ExitGame value) exitGame,
    required TResult Function(_NextRound value) nextRound,
    required TResult Function(_NoTimeLeft value) noTimeLeft,
    required TResult Function(_NoLivesLeft value) noLivesLeft,
  }) {
    return noLivesLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(_StartGame value)? startGame,
    TResult? Function(_ExitGame value)? exitGame,
    TResult? Function(_NextRound value)? nextRound,
    TResult? Function(_NoTimeLeft value)? noTimeLeft,
    TResult? Function(_NoLivesLeft value)? noLivesLeft,
  }) {
    return noLivesLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(_StartGame value)? startGame,
    TResult Function(_ExitGame value)? exitGame,
    TResult Function(_NextRound value)? nextRound,
    TResult Function(_NoTimeLeft value)? noTimeLeft,
    TResult Function(_NoLivesLeft value)? noLivesLeft,
    required TResult orElse(),
  }) {
    if (noLivesLeft != null) {
      return noLivesLeft(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoLivesLeftToJson(
      this,
    );
  }
}

abstract class _NoLivesLeft implements GameEvent {
  factory _NoLivesLeft() = _$_NoLivesLeft;

  factory _NoLivesLeft.fromJson(Map<String, dynamic> json) =
      _$_NoLivesLeft.fromJson;
}
