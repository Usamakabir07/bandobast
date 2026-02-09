// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserProfileRequestDtoImpl _$$UpdateUserProfileRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserProfileRequestDtoImpl(
      userId: json['user_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      bio: json['bio'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$UpdateUserProfileRequestDtoImplToJson(
        _$UpdateUserProfileRequestDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'bio': instance.bio,
      'address': instance.address,
    };
