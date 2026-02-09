import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'verify_user_state.freezed.dart';

@freezed
class VerifyUserState with _$VerifyUserState {
  const factory VerifyUserState.initial() = _VerifyUserStateInitial;
  const factory VerifyUserState.loading() = _VerifyUserStateLoading;
  const factory VerifyUserState.goToProfileSetupPage() = _VerifyUserStateGoToSetupPage;
  const factory VerifyUserState.goToDashboard() = _VerifyUserStateGoToDashboard;
  const factory VerifyUserState.error(Failure error) = _VerifyUserStateError;
}
