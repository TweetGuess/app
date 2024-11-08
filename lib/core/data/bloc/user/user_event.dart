import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tweetguess/core/data/models/user/settings/gameplay.dart';

import '../../../../modules/game/domain/models/game.dart';
import '../../models/user/settings/language.dart';

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

@freezed
class UserUpdateGameplaySettings extends UserEvent with _$UserUpdateGameplaySettings {
  factory UserUpdateGameplaySettings({required GameplaySettings gameplaySettings}) =
      _UserUpdateGameplaySettings;
}

@freezed
class UserUpdateIntroStatus extends UserEvent
    with _$UserUpdateIntroStatus {
  factory UserUpdateIntroStatus(
          {required bool finishedIntro,}) =
      _UserUpdateIntroStatus;
}

