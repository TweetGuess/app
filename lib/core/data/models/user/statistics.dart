import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics.freezed.dart';
part 'statistics.g.dart';

@freezed
class UserStatistics with _$UserStatistics {
  /// roundsPlayed, accuracyOfGuesses & longestStreak are planned as all-time statistics
  /// Then we can have more stats for the last 100 games, like top politician, points earned etc.
  factory UserStatistics([
    @Default(0) int pointsEarned,
    @Default(0) int roundsPlayed,
    @Default(0) double accuracyOfGuesses,
    @Default(0) int longestStreak,
  ]) = _UserStatistics;

  factory UserStatistics.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticsFromJson(json);
}
