// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$$_UserStateFromJson(Map<String, dynamic> json) => _$_UserState(
      username: json['username'] as String,
      statistics:
          UserStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'username': instance.username,
      'statistics': instance.statistics,
    };
