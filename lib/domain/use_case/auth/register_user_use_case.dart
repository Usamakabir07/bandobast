import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entity/request/auth/register_user_request.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';
import '../../utils/success.dart';

@injectable
class RegisterUserUseCase {
  RegisterUserUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, Success>> call({
    required RegisterUserRequest request,
  }) async => _repo.registerUser(request: request);
}
