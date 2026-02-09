import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/utils/database_constants.dart';

part 'get_user_profile.freezed.dart';

@freezed
class GetUserProfile with _$GetUserProfile {
  const factory GetUserProfile({
    @JsonKey(name: DatabaseConstants.id) required String userId,
    @JsonKey(name: DatabaseConstants.name) required String name,
    @JsonKey(name: DatabaseConstants.phone) required String phone,
    @JsonKey(name: DatabaseConstants.cars) required int cars,
    @JsonKey(name: DatabaseConstants.bookings) required int bookings,
    @JsonKey(name: DatabaseConstants.totalWashes) required int totalWashes,
  }) = _GetUserProfile;
}
