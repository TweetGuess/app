// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatisticsImpl _$$UserStatisticsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatisticsImpl(
      (json['pointsEarned'] as num?)?.toInt() ?? 0,
      (json['gamesPlayed'] as num?)?.toInt() ?? 0,
      (json['roundsPlayed'] as num?)?.toInt() ?? 0,
      (json['accuracyOfGuesses'] as num?)?.toDouble() ?? 0,
      (json['longestStreak'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UserStatisticsImplToJson(
        _$UserStatisticsImpl instance) =>
    <String, dynamic>{
      'pointsEarned': instance.pointsEarned,
      'gamesPlayed': instance.gamesPlayed,
      'roundsPlayed': instance.roundsPlayed,
      'accuracyOfGuesses': instance.accuracyOfGuesses,
      'longestStreak': instance.longestStreak,
    };
