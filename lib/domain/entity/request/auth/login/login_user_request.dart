import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/dto/request/auth/login/login_user_request_dto.dart';
part 'login_user_request.freezed.dart';

@freezed
class LoginUserRequest with _$LoginUserRequest {
  const factory LoginUserRequest({
    required String phoneNumber,
  }) = _LoginUserRequest;
}

extension LoginUserRequestExtension on LoginUserRequest {
  LoginUserRequestDto get toDto =>
      LoginUserRequestDto(phoneNumber: phoneNumber);
}
