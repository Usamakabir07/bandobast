import 'package:bandobast/app/pages/home_page/cubit/create_user_request_state.dart';
import 'package:bandobast/domain/entity/request/user_requests/create_user_request.dart';
import 'package:bandobast/domain/use_case/user_requests/create_user_request_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateUserRequestCubit extends Cubit<CreateUserRequestState> {
  CreateUserRequestCubit(this._createUserRequestUseCase)
      : super(const CreateUserRequestState.initial());

  final CreateUserRequestUseCase _createUserRequestUseCase;

  Future<void> createUserRequest({required CreateUserRequest request}) async {
    emit(const CreateUserRequestState.loading());
    final response = await _createUserRequestUseCase(request: request);
    response.fold(
      (l) => emit(CreateUserRequestState.error(l)),
      (r) => emit(const CreateUserRequestState.success()),
    );
  }
}
