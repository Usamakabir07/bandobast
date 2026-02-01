import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user_request_dto.freezed.dart';
part 'login_user_request_dto.g.dart';

@freezed
class LoginUserRequestDto with _$LoginUserRequestDto {
  const factory LoginUserRequestDto({
    required String phoneNumber,
  }) = _LoginUserRequestDto;

  factory LoginUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserRequestDtoFromJson(json);
}
