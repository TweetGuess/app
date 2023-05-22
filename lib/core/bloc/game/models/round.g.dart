// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Round _$$_RoundFromJson(Map<String, dynamic> json) => _$_Round(
      currentTweet: json['currentTweet'],
      answerPossibilities: (json['answerPossibilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_RoundToJson(_$_Round instance) => <String, dynamic>{
      'currentTweet': instance.currentTweet,
      'answerPossibilities': instance.answerPossibilities,
    };
