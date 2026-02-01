import 'package:bandobast/data/data_source/utils/database_constants.dart';
import 'package:bandobast/data/dto/request/auth/login/login_user_request_dto.dart';
import 'package:bandobast/data/dto/request/auth/register_user_request_dto.dart';
import 'package:bandobast/data/dto/request/auth/verify_user/verify_user_request_dto.dart';
import 'package:bandobast/injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../domain/data_source/app_data_source.dart';

@Injectable(as: AppDataSource)
class AppDataSourceImpl implements AppDataSource {
  AppDataSourceImpl();

  Dio dio = getIt<Dio>();
  final _supabase = Supabase.instance.client;

  @override
  Future<void> registerUser({required RegisterUserRequestDto request}) async {
    await _supabase.auth.signInWithOtp(phone: request.phoneNumber);
  }

  @override
  Future<bool> verifyUser({required VerifyUserRequestDto request}) async {
    final resp = await _supabase.auth.verifyOTP(
      phone: request.phoneNumber,
      token: request.token,
      type: OtpType.sms,
    );
    final uid = resp.user?.id;
    if ((uid ?? '').isEmpty) throw Exception('Login failed: No user ID.');

    // profile check (as you had)
    final profile = await _supabase
        .from(DatabaseConstants.users)
        .select(DatabaseConstants.id)
        .eq(DatabaseConstants.id, uid!)
        .maybeSingle();
    return profile != null;
  }

  @override
  Future<void> loginUser({required LoginUserRequestDto request}) async {
    await _supabase.auth.signInWithOtp(phone: request.phoneNumber);
  }

  @override
  Future<User?> getCurrentUser() async {
    final currentUser = _supabase.auth.currentUser;
    return currentUser;
  }
}
