import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tweetguess/core/utils/list.dart';

import '../../models/interface_tweet.dart';
import '../../models/retwitt/tweet.dart';

class TweetService {
  static List<ITweet> _tweets = [];
  static bool finished = false;

  static Future<List<ITweet>> parseTweetsJson(String file) async {
    return List<Map<String, dynamic>>.from(jsonDecode(file))
        .map((Map<String, dynamic> json) {
      final tempTweet = Tweet.fromJson(json);
      return tempTweet;
    }).toList();
  }

  static Future<bool> loadTweets() async {
    if (_tweets.isEmpty) {
      var file = await rootBundle.loadString("assets/tweets/tweets23.json");

      _tweets = await compute(parseTweetsJson, file);

      finished = true;
      return true;
    }
    print(_tweets.length);
    return false;
  }

  static Future<void> _waitUntilDone() async {
    final completer = Completer();
    if (!finished) {
      await Future.delayed(const Duration(milliseconds: 500));
      return _waitUntilDone();
    } else {
      completer.complete();
    }
    return completer.future;
  }

  static Future<List<ITweet>> getTweets() async {
    await _waitUntilDone();

    return _tweets;
  }

  static ITweet getUnusedTweet(List<String> usedTweets) {
    if (_tweets.isEmpty) {
      throw Exception("Tweets are not initialized yet!");
    }

    while (true) {
      var rndm = _tweets.randomElement();

      if (usedTweets.indexWhere((element) => element == rndm.tweetId) == -1) {
        return rndm;
      }
    }
  }

  /// [filter] is to exclude authors by their handle
  static List<(String name, String handle)> getRandomAuthors(
    List<(String, String)> filter,
  ) {
    if (_tweets.isEmpty) {
      throw Exception("Tweets are not initialized yet!");
    }
    var res = <(String, String)>[...filter];

    for (var i = filter.length; i < 4; i++) {
      var randomTweet = _tweets.randomElement();

      if (!filter.any(
            (e) => e.$2 == randomTweet.authorHandle,
          ) &&
          !res.any((element) => element.$1 == randomTweet.authorName)) {
        res.add((randomTweet.authorName, randomTweet.authorHandle));
      } else {
        i--;
      }
    }

    return res;
  }
}
