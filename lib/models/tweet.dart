import 'id.dart';

class Tweet {
  Id? dbId;
  String? name;
  String? handle;
  int? id;
  int? tweetId;
  int? retweetCount;
  String? text;
  List<dynamic>? links;

  Tweet({
    this.dbId,
    this.name,
    this.handle,
    this.id,
    this.tweetId,
    this.retweetCount,
    this.text,
    this.links,
  });

  @override
  String toString() {
    return 'Tweet(id: $dbId, name: $name, handle: $handle, id: $id, tweetId: $tweetId, retweetCount: $retweetCount, text: $text, links: $links)';
  }

  factory Tweet.fromJson(Map<String, dynamic> json) => Tweet(
    dbId: json['_id'] == null
        ? null
        : Id.fromJson(json['_id'] as Map<String, dynamic>),
    name: json['name'] as String?,
    handle: json['handle'] as String?,
    id: json['id'] as int?,
    tweetId: json['tweetId'] as int?,
    retweetCount: json['retweet_count'] as int?,
    text: json['text'] as String?,
    links: json['links'] as List<dynamic>?,
  );

  Map<String, dynamic> toJson() => {
    '_id': dbId?.toJson(),
    'name': name,
    'handle': handle,
    'id': id,
    'tweetId': tweetId,
    'retweet_count': retweetCount,
    'text': text,
    'links': links,
  };
}
