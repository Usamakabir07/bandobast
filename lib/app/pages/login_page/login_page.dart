import "package:auto_route/annotations.dart";
import "package:auto_route/auto_route.dart";
import "package:bandobast/app/pages/login_page/cubit/auth_cubit.dart";
import "package:bandobast/app/pages/login_page/widget/login_page_body.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:bandobast/app/themes/app_styles.dart";
import "package:bandobast/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: true,
        title: Text(
          "Bandobast",
          textAlign: TextAlign.center,
          style: AppStyles.headLineSmallBold.copyWith(
            color: AppColors.seaGreen,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: AppColors.white,
        body: BlocProvider(
          create: (_) => getIt<AuthCubit>(),
          child: const LoginPageBody(),
        ),
      );
}
