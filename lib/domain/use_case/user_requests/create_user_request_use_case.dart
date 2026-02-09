import 'package:bandobast/domain/entity/request/user_requests/create_user_request.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';
import '../../utils/success.dart';

@injectable
class CreateUserRequestUseCase {
  CreateUserRequestUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, Success>> call({
    required CreateUserRequest request,
  }) async =>
      _repo.createUserRequest(request: request);
}
