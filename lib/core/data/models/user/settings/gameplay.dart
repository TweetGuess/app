import 'package:freezed_annotation/freezed_annotation.dart';

part 'gameplay.freezed.dart';
part 'gameplay.g.dart';

@freezed
class GameplaySettings with _$GameplaySettings {
  const factory GameplaySettings({@Default(true) enableImagesInTweets}) =
      _GameplaySettings;

  factory GameplaySettings.fromJson(Map<String, dynamic> json) =>
      _$GameplaySettingsFromJson(json);
}
