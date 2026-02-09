import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data_source/utils/database_constants.dart';

part 'create_user_request_dto.freezed.dart';
part 'create_user_request_dto.g.dart';

@freezed
class CreateUserRequestDto with _$CreateUserRequestDto {
  const factory CreateUserRequestDto({
    @JsonKey(name: DatabaseConstants.latitude) required double latitude,
    @JsonKey(name: DatabaseConstants.longitude) required double longitude,
    @JsonKey(name: DatabaseConstants.address) required String address,
    @JsonKey(name: DatabaseConstants.title) required String title,
    @JsonKey(name: DatabaseConstants.description) required String description,
    @JsonKey(name: DatabaseConstants.price) required double price,
    @JsonKey(name: DatabaseConstants.status) required String status,
  }) = _CreateUserRequestDto;

  factory CreateUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestDtoFromJson(json);
}
