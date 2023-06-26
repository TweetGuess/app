import 'package:flutter/cupertino.dart';

import '../../../../ui/components/primary_button.dart';
import '../../../utils/tweet_service.dart';
import '../models/round.dart';

class GameUtils {
  static Round generateRound([List<Round>? pastRounds]) {
    var rndmTweet = TweetService.getUnusedTweet(
      pastRounds?.map((e) => e.tweetId).toList() ?? [],
    );

    var rndmAuthors =
        TweetService.getRandomAuthors([(rndmTweet.name, rndmTweet.handle)]);

    var answerPossibilities = rndmAuthors
        .map((e) => (GlobalKey<UIPrimaryButtonState>(), e))
        .toList()
      ..shuffle();
    // TODO: Sensible Data - prolly needs some post processing of tweet data (the API costs money by now amk)
    return Round(
      tweetId: rndmTweet.id,
      content: rndmTweet.text,
      rightAnswer: answerPossibilities
          .indexWhere((element) => element.$2.$2 == rndmTweet.handle),
      answerPossibilities: answerPossibilities,
    );
  }
}
