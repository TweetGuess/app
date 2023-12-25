// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../interface_tweet.dart';
import 'id.dart';

class Tweet implements ITweet {
  Id dbId;
  @override
  String authorName;
  @override
  String authorHandle;
  String id;
  @override
  String tweetId;
  int retweetCount;
  @override
  String text;
  List<dynamic>? links;

  Tweet({
    required this.dbId,
    required this.authorName,
    required this.authorHandle,
    required this.id,
    required this.tweetId,
    required this.retweetCount,
    required this.text,
    this.links,
  });

  @override
  String toString() {
    return 'Tweet(id: $dbId, name: $authorName, handle: $authorHandle, id: $id, tweetId: $tweetId, retweetCount: $retweetCount, text: $text, links: $links)';
  }

  Map<String, dynamic> toJson() => {
        '_id': dbId.toJson(),
        'name': authorName,
        'handle': authorHandle,
        'id': id,
        'tweetId': tweetId,
        'retweet_count': retweetCount,
        'text': text,
        'links': links,
      };

  factory Tweet.fromJson(Map<String, dynamic> map) {
    return Tweet(
      dbId: Id.fromJson(map['_id'] as Map<String, dynamic>),
      authorName: map['name'] as String,
      authorHandle: map['handle'] as String,
      id: map['id'].toString(),
      tweetId: map['tweetId'].toString(),
      retweetCount: map['retweet_count'] as int,
      text: map['text'] as String,
      links: map['links'] != null
          ? List<dynamic>.from((map['links'] as List<dynamic>))
          : null,
    );
  }
}
