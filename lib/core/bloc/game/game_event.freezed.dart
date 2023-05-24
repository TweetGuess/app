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
      return StartGame.fromJson(json);
    case 'pausGame':
      return PauseGame.fromJson(json);
    case 'exitGame':
      return ExitGame.fromJson(json);
    case 'nextRound':
      return NextRound.fromJson(json);
    case 'noTimeLeft':
      return NoTimeLeft.fromJson(json);
    case 'noLivesLeft':
      return NoLivesLeft.fromJson(json);
    case 'gameTick':
      return GameTick.fromJson(json);

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
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
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
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
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
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
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
@JsonSerializable()
class _$StartGame implements StartGame {
  _$StartGame({final String? $type}) : $type = $type ?? 'startGame';

  factory _$StartGame.fromJson(Map<String, dynamic> json) =>
      _$$StartGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.startGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartGame);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return startGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return startGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
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
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StartGameToJson(
      this,
    );
  }
}

abstract class StartGame implements GameEvent {
  factory StartGame() = _$StartGame;

  factory StartGame.fromJson(Map<String, dynamic> json) = _$StartGame.fromJson;
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
@JsonSerializable()
class _$PauseGame implements PauseGame {
  _$PauseGame({final String? $type}) : $type = $type ?? 'pausGame';

  factory _$PauseGame.fromJson(Map<String, dynamic> json) =>
      _$$PauseGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.pausGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseGame);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return pausGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return pausGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
    required TResult orElse(),
  }) {
    if (pausGame != null) {
      return pausGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return pausGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return pausGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (pausGame != null) {
      return pausGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PauseGameToJson(
      this,
    );
  }
}

abstract class PauseGame implements GameEvent {
  factory PauseGame() = _$PauseGame;

  factory PauseGame.fromJson(Map<String, dynamic> json) = _$PauseGame.fromJson;
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
@JsonSerializable()
class _$ExitGame implements ExitGame {
  _$ExitGame({final String? $type}) : $type = $type ?? 'exitGame';

  factory _$ExitGame.fromJson(Map<String, dynamic> json) =>
      _$$ExitGameFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.exitGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitGame);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return exitGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return exitGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
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
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return exitGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return exitGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (exitGame != null) {
      return exitGame(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExitGameToJson(
      this,
    );
  }
}

abstract class ExitGame implements GameEvent {
  factory ExitGame() = _$ExitGame;

  factory ExitGame.fromJson(Map<String, dynamic> json) = _$ExitGame.fromJson;
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
@JsonSerializable()
class _$NextRound implements NextRound {
  _$NextRound({final String? $type}) : $type = $type ?? 'nextRound';

  factory _$NextRound.fromJson(Map<String, dynamic> json) =>
      _$$NextRoundFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.nextRound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextRound);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return nextRound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return nextRound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
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
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return nextRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return nextRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (nextRound != null) {
      return nextRound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NextRoundToJson(
      this,
    );
  }
}

abstract class NextRound implements GameEvent {
  factory NextRound() = _$NextRound;

  factory NextRound.fromJson(Map<String, dynamic> json) = _$NextRound.fromJson;
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
@JsonSerializable()
class _$NoTimeLeft implements NoTimeLeft {
  _$NoTimeLeft({final String? $type}) : $type = $type ?? 'noTimeLeft';

  factory _$NoTimeLeft.fromJson(Map<String, dynamic> json) =>
      _$$NoTimeLeftFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.noTimeLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoTimeLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return noTimeLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return noTimeLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
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
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return noTimeLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return noTimeLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (noTimeLeft != null) {
      return noTimeLeft(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoTimeLeftToJson(
      this,
    );
  }
}

abstract class NoTimeLeft implements GameEvent {
  factory NoTimeLeft() = _$NoTimeLeft;

  factory NoTimeLeft.fromJson(Map<String, dynamic> json) =
      _$NoTimeLeft.fromJson;
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
@JsonSerializable()
class _$NoLivesLeft implements NoLivesLeft {
  _$NoLivesLeft({final String? $type}) : $type = $type ?? 'noLivesLeft';

  factory _$NoLivesLeft.fromJson(Map<String, dynamic> json) =>
      _$$NoLivesLeftFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.noLivesLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoLivesLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return noLivesLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return noLivesLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
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
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return noLivesLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return noLivesLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (noLivesLeft != null) {
      return noLivesLeft(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoLivesLeftToJson(
      this,
    );
  }
}

abstract class NoLivesLeft implements GameEvent {
  factory NoLivesLeft() = _$NoLivesLeft;

  factory NoLivesLeft.fromJson(Map<String, dynamic> json) =
      _$NoLivesLeft.fromJson;
}

/// @nodoc
abstract class _$$GameTickCopyWith<$Res> {
  factory _$$GameTickCopyWith(
          _$GameTick value, $Res Function(_$GameTick) then) =
      __$$GameTickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameTickCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$GameTick>
    implements _$$GameTickCopyWith<$Res> {
  __$$GameTickCopyWithImpl(_$GameTick _value, $Res Function(_$GameTick) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GameTick implements GameTick {
  _$GameTick({final String? $type}) : $type = $type ?? 'gameTick';

  factory _$GameTick.fromJson(Map<String, dynamic> json) =>
      _$$GameTickFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameEvent.gameTick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameTick);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() startGame,
    required TResult Function() pausGame,
    required TResult Function() exitGame,
    required TResult Function() nextRound,
    required TResult Function() noTimeLeft,
    required TResult Function() noLivesLeft,
    required TResult Function() gameTick,
  }) {
    return gameTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? startGame,
    TResult? Function()? pausGame,
    TResult? Function()? exitGame,
    TResult? Function()? nextRound,
    TResult? Function()? noTimeLeft,
    TResult? Function()? noLivesLeft,
    TResult? Function()? gameTick,
  }) {
    return gameTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? startGame,
    TResult Function()? pausGame,
    TResult Function()? exitGame,
    TResult Function()? nextRound,
    TResult Function()? noTimeLeft,
    TResult Function()? noLivesLeft,
    TResult Function()? gameTick,
    required TResult orElse(),
  }) {
    if (gameTick != null) {
      return gameTick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GameEvent value) $default, {
    required TResult Function(StartGame value) startGame,
    required TResult Function(PauseGame value) pausGame,
    required TResult Function(ExitGame value) exitGame,
    required TResult Function(NextRound value) nextRound,
    required TResult Function(NoTimeLeft value) noTimeLeft,
    required TResult Function(NoLivesLeft value) noLivesLeft,
    required TResult Function(GameTick value) gameTick,
  }) {
    return gameTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GameEvent value)? $default, {
    TResult? Function(StartGame value)? startGame,
    TResult? Function(PauseGame value)? pausGame,
    TResult? Function(ExitGame value)? exitGame,
    TResult? Function(NextRound value)? nextRound,
    TResult? Function(NoTimeLeft value)? noTimeLeft,
    TResult? Function(NoLivesLeft value)? noLivesLeft,
    TResult? Function(GameTick value)? gameTick,
  }) {
    return gameTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GameEvent value)? $default, {
    TResult Function(StartGame value)? startGame,
    TResult Function(PauseGame value)? pausGame,
    TResult Function(ExitGame value)? exitGame,
    TResult Function(NextRound value)? nextRound,
    TResult Function(NoTimeLeft value)? noTimeLeft,
    TResult Function(NoLivesLeft value)? noLivesLeft,
    TResult Function(GameTick value)? gameTick,
    required TResult orElse(),
  }) {
    if (gameTick != null) {
      return gameTick(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameTickToJson(
      this,
    );
  }
}

abstract class GameTick implements GameEvent {
  factory GameTick() = _$GameTick;

  factory GameTick.fromJson(Map<String, dynamic> json) = _$GameTick.fromJson;
}
