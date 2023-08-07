// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) roundInProgress,
    required TResult Function(Game game, GameEvent event) terminal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? roundInProgress,
    TResult? Function(Game game, GameEvent event)? terminal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? roundInProgress,
    TResult Function(Game game, GameEvent event)? terminal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitial value) initial,
    required TResult Function(GameRoundInProgress value) roundInProgress,
    required TResult Function(GameTerminal value) terminal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameRoundInProgress value)? roundInProgress,
    TResult? Function(GameTerminal value)? terminal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameRoundInProgress value)? roundInProgress,
    TResult Function(GameTerminal value)? terminal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameInitialCopyWith<$Res> {
  factory _$$GameInitialCopyWith(
          _$GameInitial value, $Res Function(_$GameInitial) then) =
      __$$GameInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameInitialCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameInitial>
    implements _$$GameInitialCopyWith<$Res> {
  __$$GameInitialCopyWithImpl(
      _$GameInitial _value, $Res Function(_$GameInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameInitial extends GameInitial {
  _$GameInitial() : super._();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) roundInProgress,
    required TResult Function(Game game, GameEvent event) terminal,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? roundInProgress,
    TResult? Function(Game game, GameEvent event)? terminal,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? roundInProgress,
    TResult Function(Game game, GameEvent event)? terminal,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitial value) initial,
    required TResult Function(GameRoundInProgress value) roundInProgress,
    required TResult Function(GameTerminal value) terminal,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameRoundInProgress value)? roundInProgress,
    TResult? Function(GameTerminal value)? terminal,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameRoundInProgress value)? roundInProgress,
    TResult Function(GameTerminal value)? terminal,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameInitial extends GameState {
  factory GameInitial() = _$GameInitial;
  GameInitial._() : super._();
}

/// @nodoc
abstract class _$$GameRoundInProgressCopyWith<$Res> {
  factory _$$GameRoundInProgressCopyWith(_$GameRoundInProgress value,
          $Res Function(_$GameRoundInProgress) then) =
      __$$GameRoundInProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$GameRoundInProgressCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameRoundInProgress>
    implements _$$GameRoundInProgressCopyWith<$Res> {
  __$$GameRoundInProgressCopyWithImpl(
      _$GameRoundInProgress _value, $Res Function(_$GameRoundInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$GameRoundInProgress(
      null == game
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

class _$GameRoundInProgress extends GameRoundInProgress {
  _$GameRoundInProgress(this.game) : super._();

  @override
  final Game game;

  @override
  String toString() {
    return 'GameState.roundInProgress(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRoundInProgress &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRoundInProgressCopyWith<_$GameRoundInProgress> get copyWith =>
      __$$GameRoundInProgressCopyWithImpl<_$GameRoundInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) roundInProgress,
    required TResult Function(Game game, GameEvent event) terminal,
  }) {
    return roundInProgress(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? roundInProgress,
    TResult? Function(Game game, GameEvent event)? terminal,
  }) {
    return roundInProgress?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? roundInProgress,
    TResult Function(Game game, GameEvent event)? terminal,
    required TResult orElse(),
  }) {
    if (roundInProgress != null) {
      return roundInProgress(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitial value) initial,
    required TResult Function(GameRoundInProgress value) roundInProgress,
    required TResult Function(GameTerminal value) terminal,
  }) {
    return roundInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameRoundInProgress value)? roundInProgress,
    TResult? Function(GameTerminal value)? terminal,
  }) {
    return roundInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameRoundInProgress value)? roundInProgress,
    TResult Function(GameTerminal value)? terminal,
    required TResult orElse(),
  }) {
    if (roundInProgress != null) {
      return roundInProgress(this);
    }
    return orElse();
  }
}

abstract class GameRoundInProgress extends GameState {
  factory GameRoundInProgress(final Game game) = _$GameRoundInProgress;
  GameRoundInProgress._() : super._();

  Game get game;
  @JsonKey(ignore: true)
  _$$GameRoundInProgressCopyWith<_$GameRoundInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameTerminalCopyWith<$Res> {
  factory _$$GameTerminalCopyWith(
          _$GameTerminal value, $Res Function(_$GameTerminal) then) =
      __$$GameTerminalCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game, GameEvent event});

  $GameCopyWith<$Res> get game;
  $GameEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$GameTerminalCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameTerminal>
    implements _$$GameTerminalCopyWith<$Res> {
  __$$GameTerminalCopyWithImpl(
      _$GameTerminal _value, $Res Function(_$GameTerminal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? event = null,
  }) {
    return _then(_$GameTerminal(
      null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameEventCopyWith<$Res> get event {
    return $GameEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$GameTerminal extends GameTerminal {
  _$GameTerminal(this.game, this.event) : super._();

  @override
  final Game game;
  @override
  final GameEvent event;

  @override
  String toString() {
    return 'GameState.terminal(game: $game, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTerminal &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTerminalCopyWith<_$GameTerminal> get copyWith =>
      __$$GameTerminalCopyWithImpl<_$GameTerminal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) roundInProgress,
    required TResult Function(Game game, GameEvent event) terminal,
  }) {
    return terminal(game, event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? roundInProgress,
    TResult? Function(Game game, GameEvent event)? terminal,
  }) {
    return terminal?.call(game, event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? roundInProgress,
    TResult Function(Game game, GameEvent event)? terminal,
    required TResult orElse(),
  }) {
    if (terminal != null) {
      return terminal(game, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitial value) initial,
    required TResult Function(GameRoundInProgress value) roundInProgress,
    required TResult Function(GameTerminal value) terminal,
  }) {
    return terminal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameRoundInProgress value)? roundInProgress,
    TResult? Function(GameTerminal value)? terminal,
  }) {
    return terminal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameRoundInProgress value)? roundInProgress,
    TResult Function(GameTerminal value)? terminal,
    required TResult orElse(),
  }) {
    if (terminal != null) {
      return terminal(this);
    }
    return orElse();
  }
}

abstract class GameTerminal extends GameState {
  factory GameTerminal(final Game game, final GameEvent event) = _$GameTerminal;
  GameTerminal._() : super._();

  Game get game;
  GameEvent get event;
  @JsonKey(ignore: true)
  _$$GameTerminalCopyWith<_$GameTerminal> get copyWith =>
      throw _privateConstructorUsedError;
}
