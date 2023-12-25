class Media {
  String? url;
  String? type;

  Media({this.url, this.type});

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        url: json['url'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'type': type,
      };
}
