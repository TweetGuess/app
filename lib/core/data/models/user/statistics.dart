import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics.freezed.dart';
part 'statistics.g.dart';

@freezed
class UserStatistics with _$UserStatistics {
  factory UserStatistics([
    @Default(0) int roundsPlayed,
    @Default(0) int accuracyOfGuesses,
    @Default(0) int longestStreak,
  ]) = _UserStatistics;

  factory UserStatistics.fromJson(Map<String, dynamic> json) =>
      _$UserStatisticsFromJson(json);
}
