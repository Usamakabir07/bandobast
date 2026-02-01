import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_request_dto.freezed.dart';
part 'verify_user_request_dto.g.dart';

@freezed
class VerifyUserRequestDto with _$VerifyUserRequestDto {
  const factory VerifyUserRequestDto({
    required String phoneNumber,
    required String token,
  }) = _VerifyUserRequestDto;

  factory VerifyUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyUserRequestDtoFromJson(json);
}
