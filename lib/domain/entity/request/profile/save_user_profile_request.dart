import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/utils/database_constants.dart';
import '../../../../data/dto/request/profile/save_user_profile_request_dto.dart';
part 'save_user_profile_request.freezed.dart';

@freezed
class SaveUserProfileRequest with _$SaveUserProfileRequest {
  const factory SaveUserProfileRequest({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
    @JsonKey(name: DatabaseConstants.phone) required String phone,
    @JsonKey(name: DatabaseConstants.firstName) required String firstName,
    @JsonKey(name: DatabaseConstants.lastName) required String lastName,
    @JsonKey(name: DatabaseConstants.email) required String email,
  }) = _SaveUserProfileRequest;
}

extension SaveUserProfileRequestExtension on SaveUserProfileRequest {
  SaveUserProfileRequestDto get toDto => SaveUserProfileRequestDto(
        userId: userId,
        phone: phone,
        firstName: firstName,
        lastName: lastName,
        email: email,
      );
}
