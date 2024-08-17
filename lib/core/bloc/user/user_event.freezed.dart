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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserUpdateStats {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)
        $default, {
    required TResult Function(Game game) fromGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult? Function(Game game)? fromGame,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
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
abstract class _$$UserUpdateStatsImplCopyWith<$Res> {
  factory _$$UserUpdateStatsImplCopyWith(_$UserUpdateStatsImpl value,
          $Res Function(_$UserUpdateStatsImpl) then) =
      __$$UserUpdateStatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int pointsEarned,
      int gamesPlayed,
      int roundsPlayed,
      double accuracyOfGuesses,
      int longestStreak});
}

/// @nodoc
class __$$UserUpdateStatsImplCopyWithImpl<$Res>
    extends _$UserUpdateStatsCopyWithImpl<$Res, _$UserUpdateStatsImpl>
    implements _$$UserUpdateStatsImplCopyWith<$Res> {
  __$$UserUpdateStatsImplCopyWithImpl(
      _$UserUpdateStatsImpl _value, $Res Function(_$UserUpdateStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pointsEarned = null,
    Object? gamesPlayed = null,
    Object? roundsPlayed = null,
    Object? accuracyOfGuesses = null,
    Object? longestStreak = null,
  }) {
    return _then(_$UserUpdateStatsImpl(
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
      gamesPlayed: null == gamesPlayed
          ? _value.gamesPlayed
          : gamesPlayed // ignore: cast_nullable_to_non_nullable
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

class _$UserUpdateStatsImpl implements _UserUpdateStats {
  _$UserUpdateStatsImpl(
      {required this.pointsEarned,
      required this.gamesPlayed,
      required this.roundsPlayed,
      required this.accuracyOfGuesses,
      required this.longestStreak});

  @override
  final int pointsEarned;
  @override
  final int gamesPlayed;
  @override
  final int roundsPlayed;
  @override
  final double accuracyOfGuesses;
  @override
  final int longestStreak;

  @override
  String toString() {
    return 'UserUpdateStats(pointsEarned: $pointsEarned, gamesPlayed: $gamesPlayed, roundsPlayed: $roundsPlayed, accuracyOfGuesses: $accuracyOfGuesses, longestStreak: $longestStreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateStatsImpl &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned) &&
            (identical(other.gamesPlayed, gamesPlayed) ||
                other.gamesPlayed == gamesPlayed) &&
            (identical(other.roundsPlayed, roundsPlayed) ||
                other.roundsPlayed == roundsPlayed) &&
            (identical(other.accuracyOfGuesses, accuracyOfGuesses) ||
                other.accuracyOfGuesses == accuracyOfGuesses) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pointsEarned, gamesPlayed,
      roundsPlayed, accuracyOfGuesses, longestStreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateStatsImplCopyWith<_$UserUpdateStatsImpl> get copyWith =>
      __$$UserUpdateStatsImplCopyWithImpl<_$UserUpdateStatsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)
        $default, {
    required TResult Function(Game game) fromGame,
  }) {
    return $default(pointsEarned, gamesPlayed, roundsPlayed, accuracyOfGuesses,
        longestStreak);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult? Function(Game game)? fromGame,
  }) {
    return $default?.call(pointsEarned, gamesPlayed, roundsPlayed,
        accuracyOfGuesses, longestStreak);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult Function(Game game)? fromGame,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(pointsEarned, gamesPlayed, roundsPlayed,
          accuracyOfGuesses, longestStreak);
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
      required final int gamesPlayed,
      required final int roundsPlayed,
      required final double accuracyOfGuesses,
      required final int longestStreak}) = _$UserUpdateStatsImpl;

  int get pointsEarned;
  int get gamesPlayed;
  int get roundsPlayed;
  double get accuracyOfGuesses;
  int get longestStreak;
  @JsonKey(ignore: true)
  _$$UserUpdateStatsImplCopyWith<_$UserUpdateStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromRoundsImplCopyWith<$Res> {
  factory _$$FromRoundsImplCopyWith(
          _$FromRoundsImpl value, $Res Function(_$FromRoundsImpl) then) =
      __$$FromRoundsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Game game});

  $GameCopyWith<$Res> get game;
}

/// @nodoc
class __$$FromRoundsImplCopyWithImpl<$Res>
    extends _$UserUpdateStatsCopyWithImpl<$Res, _$FromRoundsImpl>
    implements _$$FromRoundsImplCopyWith<$Res> {
  __$$FromRoundsImplCopyWithImpl(
      _$FromRoundsImpl _value, $Res Function(_$FromRoundsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$FromRoundsImpl(
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

class _$FromRoundsImpl implements _FromRounds {
  _$FromRoundsImpl({required this.game});

  @override
  final Game game;

  @override
  String toString() {
    return 'UserUpdateStats.fromGame(game: $game)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromRoundsImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromRoundsImplCopyWith<_$FromRoundsImpl> get copyWith =>
      __$$FromRoundsImplCopyWithImpl<_$FromRoundsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)
        $default, {
    required TResult Function(Game game) fromGame,
  }) {
    return fromGame(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
            double accuracyOfGuesses, int longestStreak)?
        $default, {
    TResult? Function(Game game)? fromGame,
  }) {
    return fromGame?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int pointsEarned, int gamesPlayed, int roundsPlayed,
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
  factory _FromRounds({required final Game game}) = _$FromRoundsImpl;

  Game get game;
  @JsonKey(ignore: true)
  _$$FromRoundsImplCopyWith<_$FromRoundsImpl> get copyWith =>
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
abstract class _$$UserResetStatsImplCopyWith<$Res> {
  factory _$$UserResetStatsImplCopyWith(_$UserResetStatsImpl value,
          $Res Function(_$UserResetStatsImpl) then) =
      __$$UserResetStatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserResetStatsImplCopyWithImpl<$Res>
    extends _$UserResetStatsCopyWithImpl<$Res, _$UserResetStatsImpl>
    implements _$$UserResetStatsImplCopyWith<$Res> {
  __$$UserResetStatsImplCopyWithImpl(
      _$UserResetStatsImpl _value, $Res Function(_$UserResetStatsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserResetStatsImpl implements _UserResetStats {
  _$UserResetStatsImpl();

  @override
  String toString() {
    return 'UserResetStats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserResetStatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UserResetStats implements UserResetStats {
  factory _UserResetStats() = _$UserResetStatsImpl;
}

/// @nodoc
mixin _$UserSetLanguage {
  AppLanguage get newLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSetLanguageCopyWith<UserSetLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSetLanguageCopyWith<$Res> {
  factory $UserSetLanguageCopyWith(
          UserSetLanguage value, $Res Function(UserSetLanguage) then) =
      _$UserSetLanguageCopyWithImpl<$Res, UserSetLanguage>;
  @useResult
  $Res call({AppLanguage newLanguage});
}

/// @nodoc
class _$UserSetLanguageCopyWithImpl<$Res, $Val extends UserSetLanguage>
    implements $UserSetLanguageCopyWith<$Res> {
  _$UserSetLanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLanguage = null,
  }) {
    return _then(_value.copyWith(
      newLanguage: null == newLanguage
          ? _value.newLanguage
          : newLanguage // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSetLanguageImplCopyWith<$Res>
    implements $UserSetLanguageCopyWith<$Res> {
  factory _$$UserSetLanguageImplCopyWith(_$UserSetLanguageImpl value,
          $Res Function(_$UserSetLanguageImpl) then) =
      __$$UserSetLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLanguage newLanguage});
}

/// @nodoc
class __$$UserSetLanguageImplCopyWithImpl<$Res>
    extends _$UserSetLanguageCopyWithImpl<$Res, _$UserSetLanguageImpl>
    implements _$$UserSetLanguageImplCopyWith<$Res> {
  __$$UserSetLanguageImplCopyWithImpl(
      _$UserSetLanguageImpl _value, $Res Function(_$UserSetLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLanguage = null,
  }) {
    return _then(_$UserSetLanguageImpl(
      newLanguage: null == newLanguage
          ? _value.newLanguage
          : newLanguage // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ));
  }
}

/// @nodoc

class _$UserSetLanguageImpl implements _UserSetLanguage {
  _$UserSetLanguageImpl({required this.newLanguage});

  @override
  final AppLanguage newLanguage;

  @override
  String toString() {
    return 'UserSetLanguage(newLanguage: $newLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSetLanguageImpl &&
            (identical(other.newLanguage, newLanguage) ||
                other.newLanguage == newLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSetLanguageImplCopyWith<_$UserSetLanguageImpl> get copyWith =>
      __$$UserSetLanguageImplCopyWithImpl<_$UserSetLanguageImpl>(
          this, _$identity);
}

abstract class _UserSetLanguage implements UserSetLanguage {
  factory _UserSetLanguage({required final AppLanguage newLanguage}) =
      _$UserSetLanguageImpl;

  @override
  AppLanguage get newLanguage;
  @override
  @JsonKey(ignore: true)
  _$$UserSetLanguageImplCopyWith<_$UserSetLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSetAppearance {
  ThemeMode get appearance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSetAppearanceCopyWith<UserSetAppearance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSetAppearanceCopyWith<$Res> {
  factory $UserSetAppearanceCopyWith(
          UserSetAppearance value, $Res Function(UserSetAppearance) then) =
      _$UserSetAppearanceCopyWithImpl<$Res, UserSetAppearance>;
  @useResult
  $Res call({ThemeMode appearance});
}

/// @nodoc
class _$UserSetAppearanceCopyWithImpl<$Res, $Val extends UserSetAppearance>
    implements $UserSetAppearanceCopyWith<$Res> {
  _$UserSetAppearanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appearance = null,
  }) {
    return _then(_value.copyWith(
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSetAppearanceImplCopyWith<$Res>
    implements $UserSetAppearanceCopyWith<$Res> {
  factory _$$UserSetAppearanceImplCopyWith(_$UserSetAppearanceImpl value,
          $Res Function(_$UserSetAppearanceImpl) then) =
      __$$UserSetAppearanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode appearance});
}

/// @nodoc
class __$$UserSetAppearanceImplCopyWithImpl<$Res>
    extends _$UserSetAppearanceCopyWithImpl<$Res, _$UserSetAppearanceImpl>
    implements _$$UserSetAppearanceImplCopyWith<$Res> {
  __$$UserSetAppearanceImplCopyWithImpl(_$UserSetAppearanceImpl _value,
      $Res Function(_$UserSetAppearanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appearance = null,
  }) {
    return _then(_$UserSetAppearanceImpl(
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$UserSetAppearanceImpl implements _UserSetAppearance {
  _$UserSetAppearanceImpl({required this.appearance});

  @override
  final ThemeMode appearance;

  @override
  String toString() {
    return 'UserSetAppearance(appearance: $appearance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSetAppearanceImpl &&
            (identical(other.appearance, appearance) ||
                other.appearance == appearance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appearance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSetAppearanceImplCopyWith<_$UserSetAppearanceImpl> get copyWith =>
      __$$UserSetAppearanceImplCopyWithImpl<_$UserSetAppearanceImpl>(
          this, _$identity);
}

abstract class _UserSetAppearance implements UserSetAppearance {
  factory _UserSetAppearance({required final ThemeMode appearance}) =
      _$UserSetAppearanceImpl;

  @override
  ThemeMode get appearance;
  @override
  @JsonKey(ignore: true)
  _$$UserSetAppearanceImplCopyWith<_$UserSetAppearanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserUpdateGameplaySettings {
  GameplaySettings get gameplaySettings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserUpdateGameplaySettingsCopyWith<UserUpdateGameplaySettings>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateGameplaySettingsCopyWith<$Res> {
  factory $UserUpdateGameplaySettingsCopyWith(UserUpdateGameplaySettings value,
          $Res Function(UserUpdateGameplaySettings) then) =
      _$UserUpdateGameplaySettingsCopyWithImpl<$Res,
          UserUpdateGameplaySettings>;
  @useResult
  $Res call({GameplaySettings gameplaySettings});

  $GameplaySettingsCopyWith<$Res> get gameplaySettings;
}

/// @nodoc
class _$UserUpdateGameplaySettingsCopyWithImpl<$Res,
        $Val extends UserUpdateGameplaySettings>
    implements $UserUpdateGameplaySettingsCopyWith<$Res> {
  _$UserUpdateGameplaySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameplaySettings = null,
  }) {
    return _then(_value.copyWith(
      gameplaySettings: null == gameplaySettings
          ? _value.gameplaySettings
          : gameplaySettings // ignore: cast_nullable_to_non_nullable
              as GameplaySettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameplaySettingsCopyWith<$Res> get gameplaySettings {
    return $GameplaySettingsCopyWith<$Res>(_value.gameplaySettings, (value) {
      return _then(_value.copyWith(gameplaySettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserUpdateGameplaySettingsImplCopyWith<$Res>
    implements $UserUpdateGameplaySettingsCopyWith<$Res> {
  factory _$$UserUpdateGameplaySettingsImplCopyWith(
          _$UserUpdateGameplaySettingsImpl value,
          $Res Function(_$UserUpdateGameplaySettingsImpl) then) =
      __$$UserUpdateGameplaySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameplaySettings gameplaySettings});

  @override
  $GameplaySettingsCopyWith<$Res> get gameplaySettings;
}

/// @nodoc
class __$$UserUpdateGameplaySettingsImplCopyWithImpl<$Res>
    extends _$UserUpdateGameplaySettingsCopyWithImpl<$Res,
        _$UserUpdateGameplaySettingsImpl>
    implements _$$UserUpdateGameplaySettingsImplCopyWith<$Res> {
  __$$UserUpdateGameplaySettingsImplCopyWithImpl(
      _$UserUpdateGameplaySettingsImpl _value,
      $Res Function(_$UserUpdateGameplaySettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameplaySettings = null,
  }) {
    return _then(_$UserUpdateGameplaySettingsImpl(
      gameplaySettings: null == gameplaySettings
          ? _value.gameplaySettings
          : gameplaySettings // ignore: cast_nullable_to_non_nullable
              as GameplaySettings,
    ));
  }
}

/// @nodoc

class _$UserUpdateGameplaySettingsImpl implements _UserUpdateGameplaySettings {
  _$UserUpdateGameplaySettingsImpl({required this.gameplaySettings});

  @override
  final GameplaySettings gameplaySettings;

  @override
  String toString() {
    return 'UserUpdateGameplaySettings(gameplaySettings: $gameplaySettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateGameplaySettingsImpl &&
            (identical(other.gameplaySettings, gameplaySettings) ||
                other.gameplaySettings == gameplaySettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameplaySettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateGameplaySettingsImplCopyWith<_$UserUpdateGameplaySettingsImpl>
      get copyWith => __$$UserUpdateGameplaySettingsImplCopyWithImpl<
          _$UserUpdateGameplaySettingsImpl>(this, _$identity);
}

abstract class _UserUpdateGameplaySettings
    implements UserUpdateGameplaySettings {
  factory _UserUpdateGameplaySettings(
          {required final GameplaySettings gameplaySettings}) =
      _$UserUpdateGameplaySettingsImpl;

  @override
  GameplaySettings get gameplaySettings;
  @override
  @JsonKey(ignore: true)
  _$$UserUpdateGameplaySettingsImplCopyWith<_$UserUpdateGameplaySettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserUpdateIntroStatus {
  bool get finishedIntro => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserUpdateIntroStatusCopyWith<UserUpdateIntroStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateIntroStatusCopyWith<$Res> {
  factory $UserUpdateIntroStatusCopyWith(UserUpdateIntroStatus value,
          $Res Function(UserUpdateIntroStatus) then) =
      _$UserUpdateIntroStatusCopyWithImpl<$Res, UserUpdateIntroStatus>;
  @useResult
  $Res call({bool finishedIntro});
}

/// @nodoc
class _$UserUpdateIntroStatusCopyWithImpl<$Res,
        $Val extends UserUpdateIntroStatus>
    implements $UserUpdateIntroStatusCopyWith<$Res> {
  _$UserUpdateIntroStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishedIntro = null,
  }) {
    return _then(_value.copyWith(
      finishedIntro: null == finishedIntro
          ? _value.finishedIntro
          : finishedIntro // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateIntroStatusImplCopyWith<$Res>
    implements $UserUpdateIntroStatusCopyWith<$Res> {
  factory _$$UserUpdateIntroStatusImplCopyWith(
          _$UserUpdateIntroStatusImpl value,
          $Res Function(_$UserUpdateIntroStatusImpl) then) =
      __$$UserUpdateIntroStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool finishedIntro});
}

/// @nodoc
class __$$UserUpdateIntroStatusImplCopyWithImpl<$Res>
    extends _$UserUpdateIntroStatusCopyWithImpl<$Res,
        _$UserUpdateIntroStatusImpl>
    implements _$$UserUpdateIntroStatusImplCopyWith<$Res> {
  __$$UserUpdateIntroStatusImplCopyWithImpl(_$UserUpdateIntroStatusImpl _value,
      $Res Function(_$UserUpdateIntroStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishedIntro = null,
  }) {
    return _then(_$UserUpdateIntroStatusImpl(
      finishedIntro: null == finishedIntro
          ? _value.finishedIntro
          : finishedIntro // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserUpdateIntroStatusImpl implements _UserUpdateIntroStatus {
  _$UserUpdateIntroStatusImpl({required this.finishedIntro});

  @override
  final bool finishedIntro;

  @override
  String toString() {
    return 'UserUpdateIntroStatus(finishedIntro: $finishedIntro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateIntroStatusImpl &&
            (identical(other.finishedIntro, finishedIntro) ||
                other.finishedIntro == finishedIntro));
  }

  @override
  int get hashCode => Object.hash(runtimeType, finishedIntro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateIntroStatusImplCopyWith<_$UserUpdateIntroStatusImpl>
      get copyWith => __$$UserUpdateIntroStatusImplCopyWithImpl<
          _$UserUpdateIntroStatusImpl>(this, _$identity);
}

abstract class _UserUpdateIntroStatus implements UserUpdateIntroStatus {
  factory _UserUpdateIntroStatus({required final bool finishedIntro}) =
      _$UserUpdateIntroStatusImpl;

  @override
  bool get finishedIntro;
  @override
  @JsonKey(ignore: true)
  _$$UserUpdateIntroStatusImplCopyWith<_$UserUpdateIntroStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}
