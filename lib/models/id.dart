class Id {
  String? oid;

  Id({this.oid});

  @override
  String toString() => 'Id(oid: $oid)';

  factory Id.fromJson(Map<String, dynamic> json) => Id(
    oid: json['\$oid'] as String?,
  );

  Map<String, dynamic> toJson() => {
    '$oid': oid,
  };
}
