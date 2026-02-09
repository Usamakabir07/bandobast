import 'package:bandobast/domain/entity/request/auth/login/login_user_request.dart';
import 'package:bandobast/domain/entity/request/auth/register_user_request.dart';
import 'package:bandobast/domain/entity/request/auth/verify_user/verify_user_request.dart';
import 'package:bandobast/domain/entity/request/profile/check_user_profile/check_user_profile_request.dart';
import 'package:bandobast/domain/entity/request/profile/save_user_profile_request.dart';
import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../utils/failure.dart';
import '../utils/success.dart';

abstract class AppRepository {
  Future<Either<Failure, Success>> registerUser({
    required RegisterUserRequest request,
  });
  Future<Either<Failure, Success>> loginUser({
    required LoginUserRequest request,
  });
  Future<Either<Failure, bool>> verifyUser({
    required VerifyUserRequest request,
  });
  Future<Either<Failure, User?>> getCurrentUser();
  Future<Either<Failure, Success>> saveUserProfile({
    required SaveUserProfileRequest request,
  });
  Future<Either<Failure, bool>> checkUserProfile({
    required CheckUserProfileRequest request,
  });

  Future<Either<Failure, GetUserProfile>> getUserProfile();
  Future<Either<Failure, bool>> deleteAccount();
}
