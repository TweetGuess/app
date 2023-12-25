import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/core/bloc/user/user_state.dart';
import 'package:tweetguess/core/data/models/user/settings/settings.dart';
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
            settings: UserSettings(),
          ),
        ) {
    on<UserUpdateStats>(_handleUpdateStats);
    on<UserResetStats>(_handleResetStats);
    on<UserSetAppearance>(_handleSetAppearance);
    on<UserSetLanguage>(_handleSetLanguage);
    on<UserUpdateGameplaySettings>(_handleUpdateGameplaySettings);
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

  UserSettings get userSettings => state.settings;

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
              accuracyOfGuesses: calculateAverageAccuracy(
                totalGamesPlayed,
                accuracyOfGuesses,
                state,
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
              accuracyOfGuesses: calculateAverageAccuracy(
                totalGamesPlayed,
                game.accuracy,
                state,
              ),
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

  FutureOr<void> _handleResetStats(
    UserResetStats event,
    Emitter<UserState> emit,
  ) {
    emit(state.copyWith(statistics: UserStatistics()));
  }

  FutureOr<void> _handleSetLanguage(
    UserSetLanguage event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        settings: state.settings.copyWith(language: event.newLanguage),
      ),
    );
  }

  FutureOr<void> _handleSetAppearance(
    UserSetAppearance event,
    Emitter<UserState> emit,
  ) {
    emit(
      state.copyWith(
        settings: state.settings.copyWith(appearance: event.appearance),
      ),
    );
  }

  FutureOr<void> _handleUpdateGameplaySettings(
    UserUpdateGameplaySettings event,
    Emitter<UserState> emit,
  ) {
    emit(state.copyWith.settings(gameplaySettings: event.gameplaySettings));
  }
}
