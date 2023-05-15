// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserStatistics _$$_UserStatisticsFromJson(Map<String, dynamic> json) =>
    _$_UserStatistics(
      json['roundsPlayed'] as int? ?? 0,
      json['accuracyOfGuesses'] as int? ?? 0,
      json['longestStreak'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserStatisticsToJson(_$_UserStatistics instance) =>
    <String, dynamic>{
      'roundsPlayed': instance.roundsPlayed,
      'accuracyOfGuesses': instance.accuracyOfGuesses,
      'longestStreak': instance.longestStreak,
    };
