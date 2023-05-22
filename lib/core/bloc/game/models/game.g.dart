// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$$_GameFromJson(Map<String, dynamic> json) => _$_Game(
      points: json['points'] as int? ?? 0,
      usedTweets: (json['usedTweets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      lives: json['lives'] as int? ?? 3,
      timeLeft: json['timeLeft'] as int? ?? 30,
      currentRound:
          Round.fromJson(json['currentRound'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameToJson(_$_Game instance) => <String, dynamic>{
      'points': instance.points,
      'usedTweets': instance.usedTweets,
      'lives': instance.lives,
      'timeLeft': instance.timeLeft,
      'currentRound': instance.currentRound,
    };
