import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/core/bloc/user/user_state.dart';
import 'package:tweetguess/core/data/models/user/statistics.dart';
import 'package:tweetguess/core/utils/statistics.dart';
import 'package:unique_name_generator/unique_name_generator.dart';

class UserBloc extends HydratedBloc<UserEvent, UserState> {
  UserBloc()
      : super(
          UserState(
            username: UniqueNameGenerator(
              dictionaries: [adjectives, animals],
              style: NameStyle.capital,
              separator: '',
            ).generate(),
            statistics: UserStatistics(),
          ),
        ) {
    on<UserUpdateStats>(_handleUpdateStats);
    on<UserResetStats>(_handleResetStats);
  }

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

  void _handleUpdateStats(UserUpdateStats event, Emitter<UserState> emit) {
    emit(
      state.copyWith(
        statistics: event.when<UserStatistics>(
          (pointsEarned, roundsPlayed, accuracyOfGuesses, longestStreak) {
            final newStats = state.statistics.copyWith(
              pointsEarned: pointsEarned + state.statistics.pointsEarned,
              accuracyOfGuesses:
                  (((state.statistics.accuracyOfGuesses + accuracyOfGuesses) /
                              2) *
                          100)
                      .toInt()
                      .toDouble(),
              longestStreak: longestStreak > state.statistics.longestStreak
                  ? longestStreak
                  : state.statistics.longestStreak,
              roundsPlayed: state.statistics.roundsPlayed + roundsPlayed,
            );

            return newStats;
          },
          fromGame: (game) {
            final newStats = state.statistics.copyWith(
              pointsEarned: game.points + state.statistics.pointsEarned,
              accuracyOfGuesses:
                  (((state.statistics.accuracyOfGuesses + game.accuracy) / 2) *
                          100)
                      .toInt()
                      .toDouble(),
              longestStreak: game.longestStreak > state.statistics.longestStreak
                  ? game.longestStreak.toInt()
                  : state.statistics.longestStreak,
              roundsPlayed: state.statistics.roundsPlayed +
                  [...game.pastRounds, game.currentRound].length,
            );

            return newStats;
          },
        ),
      ),
    );
  }

  FutureOr<void> _handleResetStats(
    UserResetStats event,
    Emitter<UserState> emit,
  ) {
    emit(state.copyWith(statistics: UserStatistics()));
  }
}
