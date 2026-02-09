// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserProfileDtoImpl _$$GetUserProfileDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserProfileDtoImpl(
      userId: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      cars: (json['cars'] as num).toInt(),
      bookings: (json['bookings'] as num).toInt(),
      totalWashes: (json['total_washes'] as num).toInt(),
    );

Map<String, dynamic> _$$GetUserProfileDtoImplToJson(
        _$GetUserProfileDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'name': instance.name,
      'phone': instance.phone,
      'cars': instance.cars,
      'bookings': instance.bookings,
      'total_washes': instance.totalWashes,
    };
