import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';

@injectable
class GetUserProfileUseCase {
  GetUserProfileUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, GetUserProfile>> call() async =>
      _repo.getUserProfile();
}
