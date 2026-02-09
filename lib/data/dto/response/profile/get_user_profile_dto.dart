import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/data_source/utils/database_constants.dart';
part 'get_user_profile_dto.freezed.dart';
part 'get_user_profile_dto.g.dart';

@freezed
class GetUserProfileDto with _$GetUserProfileDto {
  const factory GetUserProfileDto({
    @JsonKey(name: DatabaseConstants.id) required String userId,
    @JsonKey(name: DatabaseConstants.name) required String name,
    @JsonKey(name: DatabaseConstants.phone) required String phone,
    @JsonKey(name: DatabaseConstants.cars) required int cars,
    @JsonKey(name: DatabaseConstants.bookings) required int bookings,
    @JsonKey(name: DatabaseConstants.totalWashes) required int totalWashes,
  }) = _GetUserProfileDto;

  factory GetUserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$GetUserProfileDtoFromJson(json);
}

extension GetUserProfileDtoExtension on GetUserProfileDto {
  GetUserProfile get toEntity => GetUserProfile(
        userId: userId,
        name: name,
        cars: cars,
        totalWashes: totalWashes,
        bookings: bookings,
        phone: phone,
      );
}
