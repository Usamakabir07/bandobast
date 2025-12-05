import "package:auto_route/annotations.dart";
import "package:bandobast/app/pages/login_page/cubit/auth_cubit.dart";
import "package:bandobast/app/pages/on_boarding_page/widget/on_boarding_body.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:bandobast/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: false,
        backgroundColor: AppColors.white,
        body: BlocProvider(
          create: (_) => getIt<AuthCubit>(),
          child: const OnboardingBody(),
        ),
      );
}
