import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';

@injectable
class DeleteAccountUseCase {
  DeleteAccountUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, bool>> call() async => _repo.deleteAccount();
}
