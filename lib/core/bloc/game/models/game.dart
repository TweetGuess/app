// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tweetguess/core/bloc/game/models/round.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  factory Game._({
    @Default(0) int points,
    @Default([]) List<String> usedTweets,
    @Default(3) int lives,
    @Default(30) int timeLeft,
    @Default(false) bool isPaused,
    required Round currentRound,
  }) = _Game;

  factory Game() {
    var initialRound = _generateRound();

    return _Game(
      currentRound: initialRound,
      usedTweets: [initialRound.currentTweet.id!],
    );
  }

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  static Round _generateRound() {
    return Round(
      currentTweet: TweetService.getUnusedTweet([]),
      answerPossibilities: ["GG"],
    );
  }
}
