import 'dart:io';

import 'package:bandobast/data/data_source/utils/database_constants.dart';
import 'package:bandobast/data/dto/response/profile/get_user_profile_dto.dart';
import 'package:bandobast/domain/entity/request/auth/login/login_user_request.dart';
import 'package:bandobast/domain/entity/request/auth/register_user_request.dart';
import 'package:bandobast/domain/entity/request/auth/verify_user/verify_user_request.dart';
import 'package:bandobast/domain/entity/request/profile/check_user_profile/check_user_profile_request.dart';
import 'package:bandobast/domain/entity/request/profile/save_user_profile_request.dart';
import 'package:bandobast/domain/entity/request/user_requests/create_user_request.dart';
import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/data_source/app_data_source.dart';
import '../../domain/repositories/app_repository.dart';
import '../../domain/utils/enums/app_error.dart';
import '../../domain/utils/extension/error_extension.dart';
import '../../domain/utils/failure.dart';
import '../../domain/utils/success.dart';

@Injectable(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl(this._appDataSource);

  final AppDataSource _appDataSource;

  Future<Failure> _handleFailure(Object err) async {
    if (err is SocketException) {
      return const Failure(error: AppError.noInternetConnection);
    }

    if (err is DioException) {
      return Failure(error: toAppError(err.message!));
    }

    if (err is DioException) {
      if (err.response?.statusCode == 500) {
        final String? message = err.response!.data[DatabaseConstants.error];
        return Failure(error: toAppError(message!));
      }
    }
    return const Failure(error: AppError.defaultError);
  }

  @override
  Future<Either<Failure, Success>> registerUser({
    required RegisterUserRequest request,
  }) async {
    try {
      await _appDataSource.registerUser(request: request.toDto);
      return const Right(Success());
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, Success>> loginUser({
    required LoginUserRequest request,
  }) async {
    try {
      await _appDataSource.loginUser(request: request.toDto);
      return const Right(Success());
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, bool>> verifyUser({
    required VerifyUserRequest request,
  }) async {
    try {
      final response = await _appDataSource.verifyUser(request: request.toDto);
      return Right(response);
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    try {
      final response = await _appDataSource.getCurrentUser();
      return Right(response);
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, Success>> saveUserProfile({
    required SaveUserProfileRequest request,
  }) async {
    try {
      await _appDataSource.saveUserProfile(request: request.toDto);
      return const Right(Success());
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, GetUserProfile>> getUserProfile() async {
    try {
      final response = await _appDataSource.getUserProfile();
      return Right(response.toEntity);
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, bool>> checkUserProfile({
    required CheckUserProfileRequest request,
  }) async {
    try {
      final response = await _appDataSource.checkUserProfile(
        request: request.toDto,
      );
      return Right(response);
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, Success>> createUserRequest({
    required CreateUserRequest request,
  }) async {
    try {
      await _appDataSource.createUserRequest(request: request.toDto);
      return const Right(Success());
    } catch (err) {
      print('Error in createUserRequest: $err');
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, bool>> deleteAccount() async {
    try {
      final response = await _appDataSource.deleteAccount();
      return Right(response);
    } catch (err) {
      final failure = await _handleFailure(err);
      return Left(failure);
    }
  }
}
