import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/router/app_router.dart';
import 'package:bandobast/domain/entity/request/profile/check_user_profile/check_user_profile_request.dart';
import 'package:bandobast/domain/use_case/profile/check_user_profile_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class StartupRedirectGuard extends AutoRouteGuard {
  final CheckUserProfileUseCase _checkProfile;

  StartupRedirectGuard(this._checkProfile);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final user = Supabase.instance.client.auth.currentUser;

    if (user == null) {
      router.replaceAll([const LoginRoute()]);
      return;
    }

    final result = await _checkProfile(
      request: CheckUserProfileRequest(userId: user.id),
    );

    result.fold((failure) => router.replaceAll([const LoginRoute()]), (
      hasProfile,
    ) {
      if (hasProfile) {
        router.replaceAll([const DashboardRoute()]);
      } else {
        router.replaceAll([const RegisterRoute()]);
      }
    });
  }
}
