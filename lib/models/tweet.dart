// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'id.dart';

class Tweet {
  Id dbId;
  String name;
  String handle;
  String id;
  String tweetId;
  int retweetCount;
  String text;
  List<dynamic>? links;

  Tweet({
    required this.dbId,
    required this.name,
    required this.handle,
    required this.id,
    required this.tweetId,
    required this.retweetCount,
    required this.text,
    this.links,
  });

  @override
  String toString() {
    return 'Tweet(id: $dbId, name: $name, handle: $handle, id: $id, tweetId: $tweetId, retweetCount: $retweetCount, text: $text, links: $links)';
  }

  Map<String, dynamic> toJson() => {
        '_id': dbId.toJson(),
        'name': name,
        'handle': handle,
        'id': id,
        'tweetId': tweetId,
        'retweet_count': retweetCount,
        'text': text,
        'links': links,
      };

  factory Tweet.fromMap(Map<String, dynamic> map) {
    return Tweet(
      dbId: Id.fromJson(map['dbId'] as Map<String, dynamic>),
      name: map['name'] as String,
      handle: map['handle'] as String,
      id: map['id'] as String,
      tweetId: map['tweetId'] as String,
      retweetCount: map['retweetCount'] as int,
      text: map['text'] as String,
      links: map['links'] != null
          ? List<dynamic>.from((map['links'] as List<dynamic>))
          : null,
    );
  }

  factory Tweet.fromJson(String source) =>
      Tweet.fromMap(json.decode(source) as Map<String, dynamic>);
}
