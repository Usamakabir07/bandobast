import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../app_router.dart';

@injectable
class UnAuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = Supabase.instance.client.auth.currentUser != null;

    if (isAuthenticated) {
      router.replaceAll([const DashboardRoute()]);
    } else {
      resolver.next(true);
    }
  }
}
