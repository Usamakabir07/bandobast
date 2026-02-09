import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../data/data_source/utils/database_constants.dart';
import '../../../../../data/dto/request/profile/update_user_profile/update_user_profile_request_dto.dart';
part 'update_user_profile_request.freezed.dart';

@freezed
class UpdateUserProfileRequest with _$UpdateUserProfileRequest {
  const factory UpdateUserProfileRequest({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
    @JsonKey(name: DatabaseConstants.firstName) required String firstName,
    @JsonKey(name: DatabaseConstants.lastName) required String lastName,
    @JsonKey(name: DatabaseConstants.bio) required String bio,
    @JsonKey(name: DatabaseConstants.address) required String address,
  }) = _UpdateUserProfileRequest;
}

extension UpdateUserProfileRequestExtension on UpdateUserProfileRequest {
  UpdateUserProfileRequestDto get toDto => UpdateUserProfileRequestDto(
    userId: userId,
    firstName: firstName,
    lastName: lastName,
    bio: bio,
    address: address,
  );
}
