// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserProfileDtoImpl _$$GetUserProfileDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserProfileDtoImpl(
      userId: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$GetUserProfileDtoImplToJson(
        _$GetUserProfileDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'rating': instance.rating,
    };
