import 'package:bandobast/data/dto/request/user_requests/create_user_request_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/utils/database_constants.dart';
part 'create_user_request.freezed.dart';

@freezed
class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    @JsonKey(name: DatabaseConstants.latitude) required double latitude,
    @JsonKey(name: DatabaseConstants.longitude) required double longitude,
    @JsonKey(name: DatabaseConstants.address) required String address,
    @JsonKey(name: DatabaseConstants.title) required String title,
    @JsonKey(name: DatabaseConstants.description) required String description,
    @JsonKey(name: DatabaseConstants.price) required double price,
    @JsonKey(name: DatabaseConstants.status) required String status,
  }) = _CreateUserRequest;
}

extension CreateUserRequestExtension on CreateUserRequest {
  CreateUserRequestDto get toDto => CreateUserRequestDto(
        latitude: latitude,
        longitude: longitude,
        address: address,
        title: title,
        description: description,
        price: price,
        status: status,
      );
}
