import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../app/utils/xfile_converter.dart';
import '../../../../../data/data_source/utils/database_constants.dart';
import '../../../../../data/dto/request/profile/update_profile_picture/update_profile_picture_request_dto.dart';
part 'update_profile_picture_request.freezed.dart';

@freezed
class UpdateProfilePictureRequest with _$UpdateProfilePictureRequest {
  const factory UpdateProfilePictureRequest({
    @JsonKey(name: DatabaseConstants.userId) required String userId,
    @JsonKey(
      name: DatabaseConstants.imageUrl,
      fromJson: XFileConverter.fromJson,
      toJson: XFileConverter.toJson,
    )
    required XFile image,
  }) = _UpdateProfilePictureRequest;
}

extension UpdateProfilePictureRequestExtension on UpdateProfilePictureRequest {
  UpdateProfilePictureRequestDto get toDto =>
      UpdateProfilePictureRequestDto(userId: userId, image: image);
}
