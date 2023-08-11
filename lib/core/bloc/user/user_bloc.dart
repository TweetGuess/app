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
          (
            pointsEarned,
            gamesPlayed,
            roundsPlayed,
            accuracyOfGuesses,
            longestStreak,
          ) {
            var totalGamesPlayed = state.statistics.gamesPlayed + gamesPlayed;
            final newStats = state.statistics.copyWith(
              pointsEarned: pointsEarned + state.statistics.pointsEarned,
              accuracyOfGuesses: _calculateAverageAccuracy(
                totalGamesPlayed,
                accuracyOfGuesses,
              ),
              longestStreak: longestStreak > state.statistics.longestStreak
                  ? longestStreak
                  : state.statistics.longestStreak,
              roundsPlayed: state.statistics.roundsPlayed + roundsPlayed,
              gamesPlayed: totalGamesPlayed,
            );

            return newStats;
          },
          fromGame: (game) {
            var totalGamesPlayed = state.statistics.gamesPlayed + 1;
            final newStats = state.statistics.copyWith(
              pointsEarned: game.points + state.statistics.pointsEarned,
              accuracyOfGuesses:
                  _calculateAverageAccuracy(totalGamesPlayed, game.accuracy),
              longestStreak: game.longestStreak > state.statistics.longestStreak
                  ? game.longestStreak.toInt()
                  : state.statistics.longestStreak,
              roundsPlayed: state.statistics.roundsPlayed +
                  [...game.pastRounds, game.currentRound].length,
              gamesPlayed: totalGamesPlayed,
            );

            return newStats;
          },
        ),
      ),
    );
  }

  double _calculateAverageAccuracy(int totalGamesPlayed, double accuracy) {
    return ((((state.statistics.accuracyOfGuesses * (totalGamesPlayed - 1) +
                        accuracy) /
                    totalGamesPlayed) *
                100)
            .toInt() /
        100);
  }

  FutureOr<void> _handleResetStats(
    UserResetStats event,
    Emitter<UserState> emit,
  ) {
    emit(state.copyWith(statistics: UserStatistics()));
  }
}
