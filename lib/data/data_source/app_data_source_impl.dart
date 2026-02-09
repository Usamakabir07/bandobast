import 'package:bandobast/data/data_source/utils/database_constants.dart';
import 'package:bandobast/data/dto/request/auth/login/login_user_request_dto.dart';
import 'package:bandobast/data/dto/request/auth/register_user_request_dto.dart';
import 'package:bandobast/data/dto/request/auth/verify_user/verify_user_request_dto.dart';
import 'package:bandobast/data/dto/request/profile/check_user_profile/check_user_profile_request_dto.dart';
import 'package:bandobast/data/dto/request/profile/save_user_profile_request_dto.dart';
import 'package:bandobast/data/dto/request/user_requests/create_user_request_dto.dart';
import 'package:bandobast/data/dto/response/profile/get_user_profile_dto.dart';
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

  @override
  Future<void> saveUserProfile({
    required SaveUserProfileRequestDto request,
  }) async {
    await _supabase.from(DatabaseConstants.users).insert({
      DatabaseConstants.id: request.userId,
      DatabaseConstants.phone: request.phone,
      DatabaseConstants.firstName: request.firstName,
      DatabaseConstants.lastName: request.lastName,
      DatabaseConstants.email: request.email,
    });
  }

  @override
  Future<bool> checkUserProfile({
    required CheckUserProfileRequestDto request,
  }) async {
    final profile = await Supabase.instance.client
        .from(DatabaseConstants.users)
        .select(DatabaseConstants.id)
        .eq(DatabaseConstants.id, request.userId)
        .maybeSingle();

    return profile != null;
  }

  @override
  Future<GetUserProfileDto> getUserProfile() async {
    final userId = _supabase.auth.currentUser?.id ?? '';
    final profile = await Supabase.instance.client
        .from(DatabaseConstants.users)
        .select()
        .eq(DatabaseConstants.id, userId)
        .single();

    return GetUserProfileDto.fromJson(profile);
  }

  @override
  Future<void> createUserRequest({
    required CreateUserRequestDto request,
  }) async {
    final userId = _supabase.auth.currentUser?.id ?? '';
    await _supabase.from(DatabaseConstants.userRequests).insert({
      DatabaseConstants.userId: userId,
      DatabaseConstants.title: request.title,
      DatabaseConstants.description: request.description,
      DatabaseConstants.price: request.price,
      DatabaseConstants.latitude: request.latitude,
      DatabaseConstants.longitude: request.longitude,
      DatabaseConstants.address: request.address,
      DatabaseConstants.status: request.status,
    });
  }

  @override
  Future<bool> deleteAccount() async {
    try {
      final response = await _supabase.functions.invoke('delete-account');

      final data = response.data as Map<String, dynamic>?;
      if (data != null && data['ok'] == true) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
