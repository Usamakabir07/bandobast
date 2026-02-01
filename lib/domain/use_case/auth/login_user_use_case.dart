import 'package:bandobast/domain/entity/request/auth/login/login_user_request.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';
import '../../utils/success.dart';

@injectable
class LoginUserUseCase {
  LoginUserUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, Success>> call({
    required LoginUserRequest request,
  }) async =>
      _repo.loginUser(request: request);
}
