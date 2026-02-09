import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'get_profile_state.freezed.dart';

@freezed
class GetProfileState with _$GetProfileState {
  const factory GetProfileState.loading() = _GetProfileStateLoading;
  const factory GetProfileState.success({required GetUserProfile userProfile}) =
      _GetProfileStateSuccess;
  const factory GetProfileState.error(Failure error) = _GetProfileStateError;
}
