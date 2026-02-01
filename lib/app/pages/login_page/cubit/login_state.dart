import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;
  const factory LoginState.loading() = _LoginStateLoading;
  const factory LoginState.success() = _LoginStateSuccess;
  const factory LoginState.error(Failure error) =
      _LoginStateError;
}
