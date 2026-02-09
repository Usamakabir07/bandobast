import 'package:bandobast/data/dto/request/auth/login/login_user_request_dto.dart';
import 'package:bandobast/data/dto/request/auth/register_user_request_dto.dart';
import 'package:bandobast/data/dto/request/auth/verify_user/verify_user_request_dto.dart';
import 'package:bandobast/data/dto/request/profile/check_user_profile/check_user_profile_request_dto.dart';
import 'package:bandobast/data/dto/request/profile/save_user_profile_request_dto.dart';
import 'package:bandobast/data/dto/response/profile/get_user_profile_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AppDataSource {
  Future<void> registerUser({required RegisterUserRequestDto request});
  Future<void> loginUser({required LoginUserRequestDto request});
  Future<bool> verifyUser({required VerifyUserRequestDto request});
  Future<User?> getCurrentUser();
  Future<void> saveUserProfile({required SaveUserProfileRequestDto request});
  Future<bool> checkUserProfile({required CheckUserProfileRequestDto request});
  Future<GetUserProfileDto> getUserProfile();
  Future<bool> deleteAccount();
}
