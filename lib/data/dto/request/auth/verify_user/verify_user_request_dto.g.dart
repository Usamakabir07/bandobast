// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_user_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyUserRequestDtoImpl _$$VerifyUserRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyUserRequestDtoImpl(
      phoneNumber: json['phoneNumber'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$VerifyUserRequestDtoImplToJson(
        _$VerifyUserRequestDtoImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'token': instance.token,
    };
