import 'package:json_annotation/json_annotation.dart';
part 'news_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class News {
  final int statusCode;
  final Result result;
  News({
    required this.statusCode,
    required this.result,
  });
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class Result {
  final int count;
  final List<Post> posts;
  Result({
    required this.count,
    required this.posts,
  });
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class Post {
  final int id;
  final Meta meta;
  final String? caption;
  final List<dynamic> tags;
  final String? location;
  final int? userId;
  final String? photoId;
  final String createdAt;
  final String updatedAt;
  final Photo? photo;
  final User user;
  Post({
    required this.id,
    required this.meta,
    required this.caption,
    required this.tags,
    required this.location,
    required this.userId,
    required this.photoId,
    required this.createdAt,
    required this.updatedAt,
    required this.photo,
    required this.user,
  });
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class User {
  final int id;
  final String username;
  final Avatar? avatar;
  final String firstName;
  final String lastName;
  User({
    required this.id,
    required this.username,
    required this.avatar,
    required this.firstName,
    required this.lastName,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none)
class Meta {
  final List<dynamic> entries;
  Meta({
    required this.entries,
  });
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none)
class Photo {
  final int height;
  final int width;
  final String id;
  Photo({
    required this.height,
    required this.width,
    required this.id,
  });
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class Avatar {
  Avatar();
  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}
