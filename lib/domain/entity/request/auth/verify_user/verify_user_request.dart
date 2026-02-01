import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/dto/request/auth/verify_user/verify_user_request_dto.dart';

part 'verify_user_request.freezed.dart';

@freezed
class VerifyUserRequest with _$VerifyUserRequest {
  const factory VerifyUserRequest({
    required String phoneNumber,
    required String token,
  }) = _VerifyUserRequest;
}

extension VerifyUserRequestExtension on VerifyUserRequest {
  VerifyUserRequestDto get toDto =>
      VerifyUserRequestDto(phoneNumber: phoneNumber, token: token);
}
