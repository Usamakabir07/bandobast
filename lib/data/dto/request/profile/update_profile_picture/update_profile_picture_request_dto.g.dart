// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_picture_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfilePictureRequestDtoImpl
    _$$UpdateProfilePictureRequestDtoImplFromJson(Map<String, dynamic> json) =>
        _$UpdateProfilePictureRequestDtoImpl(
          userId: json['user_id'] as String,
          image: XFileConverter.fromJson(json['image_url'] as String),
        );

Map<String, dynamic> _$$UpdateProfilePictureRequestDtoImplToJson(
        _$UpdateProfilePictureRequestDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'image_url': XFileConverter.toJson(instance.image),
    };
