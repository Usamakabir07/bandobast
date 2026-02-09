import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data_source/utils/database_constants.dart';

part 'save_user_profile_request_dto.freezed.dart';
part 'save_user_profile_request_dto.g.dart';

@freezed
class SaveUserProfileRequestDto with _$SaveUserProfileRequestDto {
  const factory SaveUserProfileRequestDto({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
    @JsonKey(name: DatabaseConstants.phone) required String phone,
    @JsonKey(name: DatabaseConstants.firstName) required String firstName,
    @JsonKey(name: DatabaseConstants.lastName) required String lastName,
    @JsonKey(name: DatabaseConstants.email) required String email,
  }) = _SaveUserProfileRequestDto;

  factory SaveUserProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SaveUserProfileRequestDtoFromJson(json);
}
