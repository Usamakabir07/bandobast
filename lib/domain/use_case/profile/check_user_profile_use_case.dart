import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../entity/request/profile/check_user_profile/check_user_profile_request.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';

@injectable
class CheckUserProfileUseCase {
  CheckUserProfileUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, bool>> call({
    required CheckUserProfileRequest request,
  }) async => _repo.checkUserProfile(request: request);
}
