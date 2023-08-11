import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modules/game/presentation/bloc/models/game.dart';
import '../../../modules/game/presentation/bloc/models/round.dart';

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
