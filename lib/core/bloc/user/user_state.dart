import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user/settings/settings.dart';
import '../../data/models/user/statistics.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    required String username,
    required UserStatistics statistics,
    required UserSettings settings,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
