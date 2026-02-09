import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/data_source/utils/database_constants.dart';
part 'get_user_profile_dto.freezed.dart';
part 'get_user_profile_dto.g.dart';

@freezed
class GetUserProfileDto with _$GetUserProfileDto {
  const factory GetUserProfileDto({
    @JsonKey(name: DatabaseConstants.id) required String userId,
    @JsonKey(name: DatabaseConstants.firstName) required String firstName,
    @JsonKey(name: DatabaseConstants.lastName) required String lastName,
    @JsonKey(name: DatabaseConstants.phone) required String phone,
    @JsonKey(name: DatabaseConstants.email) required String email,
    @JsonKey(name: DatabaseConstants.rating) required double rating,
  }) = _GetUserProfileDto;

  factory GetUserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$GetUserProfileDtoFromJson(json);
}

extension GetUserProfileDtoExtension on GetUserProfileDto {
  GetUserProfile get toEntity => GetUserProfile(
        userId: userId,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        email: email,
        rating: rating,
      );
}
