import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'save_user_profile_state.freezed.dart';

@freezed
class SaveUserProfileState with _$SaveUserProfileState {
  const factory SaveUserProfileState.initial() = _SaveUserProfileStateInitial;
  const factory SaveUserProfileState.loading() = _SaveUserProfileStateLoading;
  const factory SaveUserProfileState.success() = _SaveUserProfileStateSuccess;
  const factory SaveUserProfileState.error(Failure error) =
      _SaveUserProfileStateError;
}
