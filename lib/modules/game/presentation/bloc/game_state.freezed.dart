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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GameInitialImplCopyWith<$Res> {
  factory _$$GameInitialImplCopyWith(
          _$GameInitialImpl value, $Res Function(_$GameInitialImpl) then) =
      __$$GameInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameInitialImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameInitialImpl>
    implements _$$GameInitialImplCopyWith<$Res> {
  __$$GameInitialImplCopyWithImpl(
      _$GameInitialImpl _value, $Res Function(_$GameInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GameInitialImpl extends GameInitial {
  _$GameInitialImpl() : super._();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameInitialImpl);
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
  factory GameInitial() = _$GameInitialImpl;
  GameInitial._() : super._();
}

/// @nodoc
abstract class _$$GameRoundInProgressImplCopyWith<$Res> {
  factory _$$GameRoundInProgressImplCopyWith(_$GameRoundInProgressImpl value,
          $Res Function(_$GameRoundInProgressImpl) then) =
      __$$GameRoundInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$GameRoundInProgressImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameRoundInProgressImpl>
    implements _$$GameRoundInProgressImplCopyWith<$Res> {
  __$$GameRoundInProgressImplCopyWithImpl(_$GameRoundInProgressImpl _value,
      $Res Function(_$GameRoundInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$GameRoundInProgressImpl(
      null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game,
    ));
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$GameRoundInProgressImpl extends GameRoundInProgress {
  _$GameRoundInProgressImpl(this.game) : super._();

  @override
  final Game game;

  @override
  String toString() {
    return 'GameState.roundInProgress(game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRoundInProgressImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRoundInProgressImplCopyWith<_$GameRoundInProgressImpl> get copyWith =>
      __$$GameRoundInProgressImplCopyWithImpl<_$GameRoundInProgressImpl>(
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
  factory GameRoundInProgress(final Game game) = _$GameRoundInProgressImpl;
  GameRoundInProgress._() : super._();

  Game get game;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameRoundInProgressImplCopyWith<_$GameRoundInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameTerminalImplCopyWith<$Res> {
  factory _$$GameTerminalImplCopyWith(
          _$GameTerminalImpl value, $Res Function(_$GameTerminalImpl) then) =
      __$$GameTerminalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game, GameEvent event});

  $GameCopyWith<$Res> get game;
  $GameEventCopyWith<$Res> get event;
}

/// @nodoc
class __$$GameTerminalImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameTerminalImpl>
    implements _$$GameTerminalImplCopyWith<$Res> {
  __$$GameTerminalImplCopyWithImpl(
      _$GameTerminalImpl _value, $Res Function(_$GameTerminalImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
    Object? event = null,
  }) {
    return _then(_$GameTerminalImpl(
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

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res> get game {
    return $GameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameEventCopyWith<$Res> get event {
    return $GameEventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc

class _$GameTerminalImpl extends GameTerminal {
  _$GameTerminalImpl(this.game, this.event) : super._();

  @override
  final Game game;
  @override
  final GameEvent event;

  @override
  String toString() {
    return 'GameState.terminal(game: $game, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTerminalImpl &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game, event);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTerminalImplCopyWith<_$GameTerminalImpl> get copyWith =>
      __$$GameTerminalImplCopyWithImpl<_$GameTerminalImpl>(this, _$identity);

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
  factory GameTerminal(final Game game, final GameEvent event) =
      _$GameTerminalImpl;
  GameTerminal._() : super._();

  Game get game;
  GameEvent get event;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameTerminalImplCopyWith<_$GameTerminalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
