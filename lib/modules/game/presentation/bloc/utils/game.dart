import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/tweet_service.dart';
import '../../../../../ui/components/primary_game_button.dart';
import '../../../domain/models/round.dart';

class GameUtils {
  static Round generateRound([List<Round>? pastRounds]) {
    var rndmTweet = TweetService.getUnusedTweet(
      pastRounds?.map((e) => e.tweetId).toList() ?? [],
    );

    var rndmAuthors = TweetService.getRandomAuthors(
        [(rndmTweet.authorName, rndmTweet.authorHandle)]);

    var answerPossibilities = rndmAuthors
        .map((e) => (GlobalKey<UIPrimaryGameButtonState>(), e))
        .toList()
      ..shuffle();
    // TODO: Sensible Data - prolly needs some post processing of tweet data (the API costs money by now amk)
    return Round(
      tweetId: rndmTweet.tweetId,
      content: rndmTweet.text,
      rightAnswer: answerPossibilities
          .indexWhere((element) => element.$2.$2 == rndmTweet.authorHandle),
      answerPossibilities: answerPossibilities,
    );
  }
}
