// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:tweetguess/models/interface_tweet.dart';

import 'entities.dart';
import 'media.dart';
import 'twitter_user.dart';

class Tweet implements ITweet {
  @override
  String authorHandle;

  @override
  String authorName;

  @override
  String text;

  @override
  String tweetId;

  @override
  DateTime? createdAt;
  TwitterUser? tweetBy;
  Entities? entities;
  String? quoted;
  String? replyTo;
  String? lang;
  int? quoteCount;
  List<Media>? media;
  int? replyCount;
  int? retweetCount;
  int? likeCount;
  int? viewCount;
  int? bookmarkCount;

  Tweet({
    required this.authorHandle,
    required this.authorName,
    required this.text,
    required this.tweetId,
    this.createdAt,
    this.tweetBy,
    this.entities,
    this.quoted,
    this.replyTo,
    this.lang,
    this.quoteCount,
    this.media,
    this.replyCount,
    this.retweetCount,
    this.likeCount,
    this.viewCount,
    this.bookmarkCount,
  });

  factory Tweet.fromJson(Map<String, dynamic> json) => Tweet(
        tweetId: json['id'],
        createdAt: json['createdAt'] != null
            ? DateFormat("EEE MMM dd HH:mm:ss '+0000' yyyy")
                .parse(json['createdAt'])
            : json['createdAt'],
        tweetBy: json['tweetBy'] == null
            ? null
            : TwitterUser.fromJson(json['tweetBy'] as Map<String, dynamic>),
        authorName: json['tweetBy']['fullName'],
        authorHandle: json['tweetBy']['userName'],
        entities: json['entities'] == null
            ? null
            : Entities.fromJson(json['entities'] as Map<String, dynamic>),
        quoted: json['quoted'] as String?,
        text: json['fullText'] as String,
        replyTo: json['replyTo'] as String?,
        lang: json['lang'] as String?,
        quoteCount: json['quoteCount'] as int?,
        media: (json['media'] as List<dynamic>?)
            ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
            .toList(),
        replyCount: json['replyCount'] as int?,
        retweetCount: json['retweetCount'] as int?,
        likeCount: json['likeCount'] as int?,
        viewCount: json['viewCount'] as int?,
        bookmarkCount: json['bookmarkCount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': tweetId,
        'createdAt': createdAt,
        'tweetBy': tweetBy?.toJson(),
        'entities': entities?.toJson(),
        'quoted': quoted,
        'fullText': text,
        'replyTo': replyTo,
        'lang': lang,
        'quoteCount': quoteCount,
        'media': media?.map((e) => e.toJson()).toList(),
        'replyCount': replyCount,
        'retweetCount': retweetCount,
        'likeCount': likeCount,
        'viewCount': viewCount,
        'bookmarkCount': bookmarkCount,
      };
}
