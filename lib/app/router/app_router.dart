import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/pages/on_boarding_page/on_boarding_page.dart';
import 'package:bandobast/app/pages/otp_verification_page/otp_verification_page.dart';
import 'package:flutter/cupertino.dart';

import '../pages/dashboard_page/dashboard_page.dart';
import '../pages/login_page/login_page.dart';
import '../pages/otp_page/otp_page.dart';
import '../pages/register_page/register_page.dart';
import '../pages/splash_page/splash_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: OnBoardingRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: OtpRoute.page),
        AutoRoute(page: DashboardRoute.page, initial: false),
      ];
}
