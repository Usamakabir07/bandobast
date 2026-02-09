import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../app/utils/xfile_converter.dart';
import '../../../../data_source/utils/database_constants.dart';

part 'update_profile_picture_request_dto.freezed.dart';
part 'update_profile_picture_request_dto.g.dart';

@freezed
class UpdateProfilePictureRequestDto with _$UpdateProfilePictureRequestDto {
  const factory UpdateProfilePictureRequestDto({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
    @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson,
    )
    required XFile image,
  }) = _UpdateProfilePictureRequestDto;

  factory UpdateProfilePictureRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfilePictureRequestDtoFromJson(json);
}
