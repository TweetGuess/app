import '../../modules/game/presentation/bloc/models/game.dart';

extension StatsX on Game {

  double get accuracy {
    var allAnswers = [...pastRounds, currentRound];
    var rightAnswers =
        allAnswers.where((answer) => answer.answeredRight ?? false).length;

    return rightAnswers / allAnswers.length;
  }

  num get  longestStreak {
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