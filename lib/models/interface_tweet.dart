import 'package:tweetguess/models/retwitt/media.dart';
import 'package:tweetguess/models/retwitt/tweet.dart';

abstract class ITweet {
  ITweet({
    required this.authorName,
    required this.authorHandle,
    required this.tweetId,
    required this.text,
  });

  String authorName;
  String authorHandle;
  String tweetId;
  String text;
}

extension ITweetHelper on ITweet {
  List<Media>? getMedia() {
    if (this is Tweet) {
      return (this as Tweet).media;
    }
    
    return null;
  }
}
