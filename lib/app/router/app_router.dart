import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/pages/on_boarding_page/on_boarding_page.dart';
import 'package:bandobast/app/pages/otp_verification_page/otp_verification_page.dart';
import 'package:bandobast/app/router/guards/auth_guard.dart';
import 'package:bandobast/app/router/guards/startup_redirect_guard.dart';
import 'package:bandobast/app/router/guards/unauth_guard.dart';
import 'package:flutter/cupertino.dart';

import '../pages/dashboard_page/dashboard_page.dart';
import '../pages/login_page/login_page.dart';
import '../pages/register_page/register_page.dart';
import '../pages/splash_page/splash_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final AuthGuard authGuard;
  final UnAuthGuard unAuthGuard;
  final StartupRedirectGuard startupRedirectGuard;

  AppRouter({
    required this.authGuard,
    required this.unAuthGuard,
    required this.startupRedirectGuard,
    super.navigatorKey,
  });
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          guards: [startupRedirectGuard],
        ),
        AutoRoute(page: OnBoardingRoute.page, guards: [unAuthGuard]),
        AutoRoute(page: LoginRoute.page, guards: [unAuthGuard]),
        AutoRoute(page: OtpVerificationRoute.page, guards: [unAuthGuard]),
        AutoRoute(page: RegisterRoute.page, guards: [authGuard]),
        AutoRoute(page: DashboardRoute.page, guards: [authGuard]),
      ];
}
