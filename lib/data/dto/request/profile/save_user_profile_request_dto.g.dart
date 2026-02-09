// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_user_profile_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveUserProfileRequestDtoImpl _$$SaveUserProfileRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveUserProfileRequestDtoImpl(
      userId: json['user_id'] as String,
      phone: json['phone'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$SaveUserProfileRequestDtoImplToJson(
        _$SaveUserProfileRequestDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
    };
