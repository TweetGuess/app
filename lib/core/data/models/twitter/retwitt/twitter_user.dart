class TwitterUser {
  String? id;
  String? userName;
  String? fullName;
  String? createdAt;
  String? description;
  bool? isVerified;
  int? favouritesCount;
  int? followersCount;
  int? followingsCount;
  int? statusesCount;
  String? location;
  String? pinnedTweet;
  String? profileBanner;
  String? profileImage;

  TwitterUser({
    this.id,
    this.userName,
    this.fullName,
    this.createdAt,
    this.description,
    this.isVerified,
    this.favouritesCount,
    this.followersCount,
    this.followingsCount,
    this.statusesCount,
    this.location,
    this.pinnedTweet,
    this.profileBanner,
    this.profileImage,
  });

  factory TwitterUser.fromJson(Map<String, dynamic> json) => TwitterUser(
        id: json['id'] as String?,
        userName: json['userName'] as String?,
        fullName: json['fullName'] as String?,
        createdAt: json['createdAt'] as String?,
        description: json['description'] as String?,
        isVerified: json['isVerified'] as bool?,
        favouritesCount: json['favouritesCount'] as int?,
        followersCount: json['followersCount'] as int?,
        followingsCount: json['followingsCount'] as int?,
        statusesCount: json['statusesCount'] as int?,
        location: json['location'] as String?,
        pinnedTweet: json['pinnedTweet'] as String?,
        profileBanner: json['profileBanner'] as String?,
        profileImage: json['profileImage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'fullName': fullName,
        'createdAt': createdAt,
        'description': description,
        'isVerified': isVerified,
        'favouritesCount': favouritesCount,
        'followersCount': followersCount,
        'followingsCount': followingsCount,
        'statusesCount': statusesCount,
        'location': location,
        'pinnedTweet': pinnedTweet,
        'profileBanner': profileBanner,
        'profileImage': profileImage,
      };
}
