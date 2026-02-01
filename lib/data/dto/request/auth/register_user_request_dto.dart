import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_request_dto.freezed.dart';
part 'register_user_request_dto.g.dart';

@freezed
class RegisterUserRequestDto with _$RegisterUserRequestDto {
  const factory RegisterUserRequestDto({
    required String phoneNumber,
  }) = _RegisterUserRequestDto;

  factory RegisterUserRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserRequestDtoFromJson(json);
}
