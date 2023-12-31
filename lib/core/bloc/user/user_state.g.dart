// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStateImpl _$$UserStateImplFromJson(Map<String, dynamic> json) =>
    _$UserStateImpl(
      finishedIntro: json['finishedIntro'] as bool? ?? false,
      username: json['username'] as String,
      statistics:
          UserStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
      settings: UserSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserStateImplToJson(_$UserStateImpl instance) =>
    <String, dynamic>{
      'finishedIntro': instance.finishedIntro,
      'username': instance.username,
      'statistics': instance.statistics,
      'settings': instance.settings,
    };
