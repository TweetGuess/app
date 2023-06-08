import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tweetguess/core/utils/list.dart';
import 'package:tweetguess/models/Tweet.dart';

class TweetService {
  static List<Tweet> _tweets = [];
  static bool finished = false;

  static Future<List<Tweet>> parseTweetsJson(String file) async {
    return List<Map<String, dynamic>>.from(jsonDecode(file))
        .map((Map<String, dynamic> json) {
      final tempTweet = Tweet.fromJson(json);
      return tempTweet;
    }).toList();
  }

  static Future<bool> loadTweets() async {
    if (_tweets.isEmpty) {
      var file = await rootBundle.loadString("assets/tweets.json");

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

  static Future<List<Tweet>> getTweets() async {
    await _waitUntilDone();

    return _tweets;
  }

  static Tweet getUnusedTweet(List<String> usedTweets) {
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
}
