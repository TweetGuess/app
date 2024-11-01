import '../../modules/game/domain/models/game.dart';
import '../bloc/user/user_state.dart';

extension StatsX on Game {
  double get accuracy {
    var allAnswers = [...pastRounds, currentRound];
    var rightAnswers =
        allAnswers.where((answer) => answer.answeredRight ?? false).length;

    return rightAnswers / allAnswers.length;
  }

  num get longestStreak {
    var currentStreak = 0;
    var longestStreak = 0;
    for (var round in [...pastRounds, currentRound]) {
      if (round.answeredRight ?? false) {
        currentStreak++;
        if (currentStreak > longestStreak) {
          longestStreak = currentStreak;
        }
      } else {
        currentStreak = 0;
      }
    }
    return longestStreak;
  }
}

double calculateAverageAccuracy(
  int totalGamesPlayed,
  double accuracy,
  UserState state,
) {
  return ((((state.statistics.accuracyOfGuesses * (totalGamesPlayed - 1) +
                      accuracy) /
                  totalGamesPlayed) *
              100)
          .toInt() /
      100);
}
