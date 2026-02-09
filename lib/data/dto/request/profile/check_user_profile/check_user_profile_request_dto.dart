import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data_source/utils/database_constants.dart';

part 'check_user_profile_request_dto.freezed.dart';
part 'check_user_profile_request_dto.g.dart';

@freezed
class CheckUserProfileRequestDto with _$CheckUserProfileRequestDto {
  const factory CheckUserProfileRequestDto({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
  }) = _CheckUserProfileRequestDto;

  factory CheckUserProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CheckUserProfileRequestDtoFromJson(json);
}
