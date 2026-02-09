import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data_source/utils/database_constants.dart';
part 'update_user_profile_request_dto.freezed.dart';
part 'update_user_profile_request_dto.g.dart';

@freezed
class UpdateUserProfileRequestDto with _$UpdateUserProfileRequestDto {
  const factory UpdateUserProfileRequestDto({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
    @JsonKey(name: DatabaseConstants.firstName) required String firstName,
    @JsonKey(name: DatabaseConstants.lastName) required String lastName,
    @JsonKey(name: DatabaseConstants.bio) required String bio,
    @JsonKey(name: DatabaseConstants.address) required String address,
  }) = _UpdateUserProfileRequestDto;

  factory UpdateUserProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileRequestDtoFromJson(json);
}
