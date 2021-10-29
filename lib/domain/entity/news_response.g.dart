// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      statusCode: json['statusCode'] as int,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result.toJson(),
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      count: json['count'] as int,
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'count': instance.count,
      'posts': instance.posts.map((e) => e.toJson()).toList(),
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as int,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
      tags: json['tags'] as List<dynamic>,
      location: json['location'] as String?,
      userId: json['userId'] as int?,
      photoId: json['photoId'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta.toJson(),
      'caption': instance.caption,
      'tags': instance.tags,
      'location': instance.location,
      'userId': instance.userId,
      'photoId': instance.photoId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'photo': instance.photo?.toJson(),
      'user': instance.user.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String,
      avatar: json['avatar'] == null
          ? null
          : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar': instance.avatar?.toJson(),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      entries: json['entries'] as List<dynamic>,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'entries': instance.entries,
    };

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      height: json['height'] as int,
      width: json['width'] as int,
      id: json['id'] as String,
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'id': instance.id,
    };

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar();

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{};
