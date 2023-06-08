// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameInitial _$$GameInitialFromJson(Map<String, dynamic> json) =>
    _$GameInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GameInitialToJson(_$GameInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$GameInProgress _$$GameInProgressFromJson(Map<String, dynamic> json) =>
    _$GameInProgress(
      Game.fromJson(json['game'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GameInProgressToJson(_$GameInProgress instance) =>
    <String, dynamic>{
      'game': instance.game,
      'runtimeType': instance.$type,
    };
