import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/data_source/utils/database_constants.dart';
import '../../../../../data/dto/request/profile/check_user_profile/check_user_profile_request_dto.dart';
part 'check_user_profile_request.freezed.dart';

@freezed
class CheckUserProfileRequest with _$CheckUserProfileRequest {
  const factory CheckUserProfileRequest({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
  }) = _CheckUserProfileRequest;
}

extension CheckUserProfileRequestExtension on CheckUserProfileRequest {
  CheckUserProfileRequestDto get toDto =>
      CheckUserProfileRequestDto(userId: userId);
}
