import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/core/bloc/user/user_state.dart';
import 'package:tweetguess/core/data/models/user/statistics.dart';
import 'package:unique_name_generator/unique_name_generator.dart';

class UserBloc extends HydratedBloc<UserEvent, UserState> {
  UserBloc()
      : super(
          UserState(
            username: UniqueNameGenerator(
              dictionaries: [adjectives, starwars, names],
              style: NameStyle.capital,
              separator: '',
            ).generate(),
            statistics: UserStatistics(),
          ),
        );

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    try {
      return UserState.fromJson(json);
    } catch (e) {
      GetIt.instance<Logger>().e("Error while deserializing User$e");
    }
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    try {
      return state.toJson();
    } catch (e) {
      GetIt.instance<Logger>().e("Error while serializing User$e");
    }
    throw UnimplementedError();
  }
}
