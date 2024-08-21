import 'package:tweetguess/core/data/models/twitter/retwitt/media.dart';
import 'package:tweetguess/core/data/models/twitter/retwitt/tweet.dart';

abstract class ITweet {
  ITweet({
    required this.authorName,
    required this.authorHandle,
    required this.tweetId,
    required this.text,
    this.createdAt,
  });

  String authorName;
  String authorHandle;
  String tweetId;
  String text;
  DateTime? createdAt;
}

extension ITweetHelper on ITweet {
  List<Media>? getMedia() {
    if (this is Tweet) {
      return (this as Tweet).media;
    }

    return null;
  }
}
