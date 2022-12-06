import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tweetguess/models/Tweet.dart';

class TweetService {
  static List<Tweet> _tweets = [];
  static bool finished = false;

  static Future<List<Tweet>> parseTweetsJson(String file) async {
    return jsonDecode(file)
        .cast<Map<String, dynamic>>()
        .map<Tweet>((Map<String, dynamic> json) {
      final tempTweet = Tweet.fromJson(json);
      return tempTweet;
    }).toList();
  }

  static Future<bool> loadTweets() async {
    if (_tweets.length == 0) {
      var file = await rootBundle.loadString("assets/tweets.json");

      _tweets = await compute(parseTweetsJson, file);

      finished = true;
      return true;
    }
    print(_tweets.length);
    return false;
  }

  Future<void> _waitUntilDone() async {
    final completer = Completer();
    if (!finished) {
      await Future.delayed(Duration(milliseconds: 500));
      return _waitUntilDone();
    } else {
      completer.complete();
    }
    return completer.future;
  }

  Future<List<Tweet>> getTweets() async {
    await _waitUntilDone();

    return _tweets;
  }
}