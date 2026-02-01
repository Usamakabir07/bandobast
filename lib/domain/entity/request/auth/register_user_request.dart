import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/dto/request/auth/register_user_request_dto.dart';
part 'register_user_request.freezed.dart';

@freezed
class RegisterUserRequest with _$RegisterUserRequest {
  const factory RegisterUserRequest({
    required String phoneNumber,
  }) = _RegisterUserRequest;
}

extension RegisterUserRequestExtension on RegisterUserRequest {
  RegisterUserRequestDto get toDto =>
      RegisterUserRequestDto(phoneNumber: phoneNumber);
}
