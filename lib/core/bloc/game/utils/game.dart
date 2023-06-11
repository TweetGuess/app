import 'package:flutter/cupertino.dart';

import '../../../utils/tweet_service.dart';
import '../models/round.dart';

class GameUtils {
  static Round generateRound([List<Round>? pastRounds]) {
    var rndmTweet = TweetService.getUnusedTweet(
      pastRounds?.map((e) => e.tweetId).toList() ?? [],
    );

    // TODO: Sensible Data - prolly needs some post processing of tweet data (the API costs money by now amk)
    return Round(
      tweetId: rndmTweet.id,
      content: rndmTweet.text,
      rightAnswer: 0,
      answerPossibilities: [
        (GlobalKey(), rndmTweet.handle),
        (GlobalKey(), "Gommemode"),
        (GlobalKey(), "Alter Schwede"),
        (GlobalKey(), "GG"),
      ],
    );
  }
}
