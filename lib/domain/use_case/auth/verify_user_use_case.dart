import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../entity/request/auth/verify_user/verify_user_request.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';

@injectable
class VerifyUserUseCase {
  VerifyUserUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, bool>> call({required VerifyUserRequest request}) async => _repo.verifyUser(request: request);
}
