import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modules/game/presentation/bloc/models/game.dart';
import '../../data/models/user/settings/language.dart';

part 'user_event.freezed.dart';

sealed class UserEvent {}

@freezed
class UserUpdateStats extends UserEvent with _$UserUpdateStats {
  factory UserUpdateStats({
    required final int pointsEarned,
    required final int gamesPlayed,
    required final int roundsPlayed,
    required final double accuracyOfGuesses,
    required final int longestStreak,
  }) = _UserUpdateStats;

  factory UserUpdateStats.fromGame({
    required Game game,
  }) = _FromRounds;
}

@freezed
class UserResetStats extends UserEvent with _$UserResetStats {
  factory UserResetStats() = _UserResetStats;
}

@freezed
class UserSetLanguage extends UserEvent with _$UserSetLanguage {
  factory UserSetLanguage({required AppLanguage newLanguage}) =
      _UserSetLanguage;
}

@freezed
class UserSetAppearance extends UserEvent with _$UserSetAppearance {
  factory UserSetAppearance({required ThemeMode appearance}) =
      _UserSetAppearance;
}
