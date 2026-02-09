// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../app/pages/login_page/cubit/login_cubit.dart' as _i894;
import '../app/pages/otp_verification_page/cubit/verify_user_cubit.dart'
    as _i506;
import '../app/pages/register_page/cubit/save_user_profile_cubit.dart' as _i637;
import '../data/data_source/app_data_source_impl.dart' as _i313;
import '../data/data_source/utils/storage_service.dart' as _i986;
import '../data/repositories/app_repository_impl.dart' as _i899;
import '../domain/data_source/app_data_source.dart' as _i882;
import '../domain/repositories/app_repository.dart' as _i788;
import '../domain/use_case/auth/get_current_user_use_case.dart' as _i733;
import '../domain/use_case/auth/login_user_use_case.dart' as _i785;
import '../domain/use_case/auth/register_user_use_case.dart' as _i962;
import '../domain/use_case/auth/verify_user_use_case.dart' as _i341;
import '../domain/use_case/profile/check_user_profile_use_case.dart' as _i189;
import '../domain/use_case/profile/delete_account_use_case.dart' as _i26;
import '../domain/use_case/profile/get_user_profile_use_case.dart' as _i291;
import '../domain/use_case/profile/save_user_profile_use_case.dart' as _i502;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i986.StorageService>(() => _i986.StorageService());
  gh.factory<_i882.AppDataSource>(() => _i313.AppDataSourceImpl());
  gh.factory<_i788.AppRepository>(
      () => _i899.AppRepositoryImpl(gh<_i882.AppDataSource>()));
  gh.factory<_i962.RegisterUserUseCase>(
      () => _i962.RegisterUserUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i785.LoginUserUseCase>(
      () => _i785.LoginUserUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i733.GetCurrentUserUseCase>(
      () => _i733.GetCurrentUserUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i341.VerifyUserUseCase>(
      () => _i341.VerifyUserUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i291.GetUserProfileUseCase>(
      () => _i291.GetUserProfileUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i502.SaveUserProfileUseCase>(
      () => _i502.SaveUserProfileUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i189.CheckUserProfileUseCase>(
      () => _i189.CheckUserProfileUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i26.DeleteAccountUseCase>(
      () => _i26.DeleteAccountUseCase(gh<_i788.AppRepository>()));
  gh.factory<_i506.VerifyUserCubit>(
      () => _i506.VerifyUserCubit(gh<_i341.VerifyUserUseCase>()));
  gh.factory<_i894.LoginCubit>(
      () => _i894.LoginCubit(gh<_i785.LoginUserUseCase>()));
  gh.factory<_i637.SaveUserProfileCubit>(
      () => _i637.SaveUserProfileCubit(gh<_i502.SaveUserProfileUseCase>()));
  return getIt;
}
