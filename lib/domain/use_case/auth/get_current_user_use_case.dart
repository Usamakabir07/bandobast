import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../repositories/app_repository.dart';
import '../../utils/failure.dart';

@injectable
class GetCurrentUserUseCase {
  GetCurrentUserUseCase(this._repo);
  final AppRepository _repo;

  Future<Either<Failure, User?>> call() async => _repo.getCurrentUser();
}
