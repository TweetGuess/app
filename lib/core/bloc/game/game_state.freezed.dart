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

GameState _$GameStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return GameInitial.fromJson(json);
    case 'inProgress':
      return GameInProgress.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'GameState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitial value) initial,
    required TResult Function(GameInProgress value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameInProgress value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameInProgress value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$GameInitial extends GameInitial {
  _$GameInitial({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$GameInitial.fromJson(Map<String, dynamic> json) =>
      _$$GameInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameInitial);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) inProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? inProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? inProgress,
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
    required TResult Function(GameInProgress value) inProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameInProgress value)? inProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameInitialToJson(
      this,
    );
  }
}

abstract class GameInitial extends GameState {
  factory GameInitial() = _$GameInitial;
  GameInitial._() : super._();

  factory GameInitial.fromJson(Map<String, dynamic> json) =
      _$GameInitial.fromJson;
}

/// @nodoc
abstract class _$$GameInProgressCopyWith<$Res> {
  factory _$$GameInProgressCopyWith(
          _$GameInProgress value, $Res Function(_$GameInProgress) then) =
      __$$GameInProgressCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$GameInProgressCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameInProgress>
    implements _$$GameInProgressCopyWith<$Res> {
  __$$GameInProgressCopyWithImpl(
      _$GameInProgress _value, $Res Function(_$GameInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$GameInProgress(
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
@JsonSerializable()
class _$GameInProgress extends GameInProgress {
  _$GameInProgress(this.game, {final String? $type})
      : $type = $type ?? 'inProgress',
        super._();

  factory _$GameInProgress.fromJson(Map<String, dynamic> json) =>
      _$$GameInProgressFromJson(json);

  @override
  final Game game;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GameState.inProgress(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameInProgress &&
            (identical(other.game, game) || other.game == game));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameInProgressCopyWith<_$GameInProgress> get copyWith =>
      __$$GameInProgressCopyWithImpl<_$GameInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Game game) inProgress,
  }) {
    return inProgress(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Game game)? inProgress,
  }) {
    return inProgress?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Game game)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInitial value) initial,
    required TResult Function(GameInProgress value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInitial value)? initial,
    TResult? Function(GameInProgress value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInitial value)? initial,
    TResult Function(GameInProgress value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameInProgressToJson(
      this,
    );
  }
}

abstract class GameInProgress extends GameState {
  factory GameInProgress(final Game game) = _$GameInProgress;
  GameInProgress._() : super._();

  factory GameInProgress.fromJson(Map<String, dynamic> json) =
      _$GameInProgress.fromJson;

  Game get game;
  @JsonKey(ignore: true)
  _$$GameInProgressCopyWith<_$GameInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
