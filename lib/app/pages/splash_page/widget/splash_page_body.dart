import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widgets/app_progress_indicator.dart';
import '../../../router/app_router.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../../login_page/cubit/auth_cubit.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) async {
        final router = context.router;
        await Future.delayed(const Duration(seconds: 5));
        if (state is AuthLoggedIn) {
          router.replace(const DashboardRoute());
        } else if (state is AuthLoggedOut) {
          router.replace(const LoginRoute());
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bandobast",
              style: AppStyles.headlineMedium.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: height10),
            const AppProgressIndicator(
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
