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
