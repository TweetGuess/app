// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserStatistics _$$_UserStatisticsFromJson(Map<String, dynamic> json) =>
    _$_UserStatistics(
      json['pointsEarned'] as int? ?? 0,
      json['gamesPlayed'] as int? ?? 0,
      json['roundsPlayed'] as int? ?? 0,
      (json['accuracyOfGuesses'] as num?)?.toDouble() ?? 0,
      json['longestStreak'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserStatisticsToJson(_$_UserStatistics instance) =>
    <String, dynamic>{
      'pointsEarned': instance.pointsEarned,
      'gamesPlayed': instance.gamesPlayed,
      'roundsPlayed': instance.roundsPlayed,
      'accuracyOfGuesses': instance.accuracyOfGuesses,
      'longestStreak': instance.longestStreak,
    };
