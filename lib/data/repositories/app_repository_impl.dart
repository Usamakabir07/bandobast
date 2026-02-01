import 'dart:io';

import 'package:bandobast/data/data_source/utils/database_constants.dart';
import 'package:bandobast/domain/entity/request/auth/login/login_user_request.dart';
import 'package:bandobast/domain/entity/request/auth/register_user_request.dart';
import 'package:bandobast/domain/entity/request/auth/verify_user/verify_user_request.dart';
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
}
