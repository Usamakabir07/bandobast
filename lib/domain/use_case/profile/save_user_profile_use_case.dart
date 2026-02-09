import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../entity/request/profile/save_user_profile_request.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';
import '../../utils/success.dart';

@injectable
class SaveUserProfileUseCase {
  SaveUserProfileUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, Success>> call({
    required SaveUserProfileRequest request,
  }) async => _repo.saveUserProfile(request: request);
}
