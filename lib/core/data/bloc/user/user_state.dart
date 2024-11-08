import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user/settings/settings.dart';
import '../../models/user/statistics.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    @Default(false) bool finishedIntro,
    required String username,
    required UserStatistics statistics,
    required UserSettings settings,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
