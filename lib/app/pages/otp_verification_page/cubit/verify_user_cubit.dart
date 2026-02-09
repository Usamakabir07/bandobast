import 'package:bandobast/domain/use_case/auth/verify_user_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entity/request/auth/verify_user/verify_user_request.dart';
import 'verify_user_state.dart';

@injectable
class VerifyUserCubit extends Cubit<VerifyUserState> {
  VerifyUserCubit(this._verifyUserUseCase)
      : super(const VerifyUserState.initial());

  final VerifyUserUseCase _verifyUserUseCase;

  Future<void> verifyUser({required VerifyUserRequest request}) async {
    emit(const VerifyUserState.loading());
    final response = await _verifyUserUseCase(request: request);
    response.fold((l) => emit(VerifyUserState.error(l)), (data) {
      if (data) {
        emit(const VerifyUserState.goToDashboard());
        return;
      }
      emit(const VerifyUserState.goToProfileSetupPage());
    });
  }
}
