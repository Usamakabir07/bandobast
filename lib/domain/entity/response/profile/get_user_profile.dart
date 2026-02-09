import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/utils/database_constants.dart';

part 'get_user_profile.freezed.dart';

@freezed
class GetUserProfile with _$GetUserProfile {
  const factory GetUserProfile({
    @JsonKey(name: DatabaseConstants.id) required String userId,
    @JsonKey(name: DatabaseConstants.firstName) required String firstName,
    @JsonKey(name: DatabaseConstants.lastName) required String lastName,
    @JsonKey(name: DatabaseConstants.phone) required String phone,
    @JsonKey(name: DatabaseConstants.email) required String email,
    @JsonKey(name: DatabaseConstants.rating) required double rating,
  }) = _GetUserProfile;
}
