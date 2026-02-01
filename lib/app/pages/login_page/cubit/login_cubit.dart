import 'package:bandobast/app/pages/login_page/cubit/login_state.dart';
import 'package:bandobast/domain/entity/request/auth/login/login_user_request.dart';
import 'package:bandobast/domain/use_case/auth/login_user_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUserUseCase) : super(const LoginState.initial());

  final LoginUserUseCase _loginUserUseCase;

  Future<void> loginUser({required LoginUserRequest request}) async {
    emit(const LoginState.loading());
    final response = await _loginUserUseCase(request: request);
    response.fold(
      (l) => emit(LoginState.error(l)),
      (r) => emit(const LoginState.success()),
    );
  }
}
