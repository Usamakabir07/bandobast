// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserRequestDtoImpl _$$CreateUserRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserRequestDtoImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      address: json['address'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CreateUserRequestDtoImplToJson(
        _$CreateUserRequestDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'status': instance.status,
    };
