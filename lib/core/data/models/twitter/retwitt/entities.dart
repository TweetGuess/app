class Entities {
  List<String>? hashtags;
  List<String>? urls;
  List<String>? mentionedUsers;

  Entities({this.hashtags, this.urls, this.mentionedUsers});

  factory Entities.fromJson(Map<String, dynamic> json) => Entities(
        hashtags: List<String>.from(json['hashtags']),
        urls: List<String>.from(json['urls']),
        mentionedUsers: List<String>.from(json['mentionedUsers']),
      );

  Map<String, dynamic> toJson() => {
        'hashtags': hashtags,
        'urls': urls,
        'mentionedUsers': mentionedUsers,
      };
}
