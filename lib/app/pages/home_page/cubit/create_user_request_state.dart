import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/utils/failure.dart';

part 'create_user_request_state.freezed.dart';

@freezed
class CreateUserRequestState with _$CreateUserRequestState {
  const factory CreateUserRequestState.initial() =
      _CreateUserRequestStateInitial;
  const factory CreateUserRequestState.loading() =
      _CreateUserRequestStateLoading;
  const factory CreateUserRequestState.success() =
      _CreateUserRequestStateSuccess;
  const factory CreateUserRequestState.error(Failure error) =
      _CreateUserRequestStateError;
}
