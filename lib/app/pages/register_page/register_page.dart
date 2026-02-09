import "package:auto_route/annotations.dart";
import "package:bandobast/app/pages/register_page/cubit/save_user_profile_cubit.dart";
import "package:bandobast/app/pages/register_page/widget/register_page_body.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:bandobast/app/themes/app_styles.dart";
import "package:bandobast/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:supabase_flutter/supabase_flutter.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = Supabase.instance.client.auth.currentUser?.id ?? '';
    final phone = Supabase.instance.client.auth.currentUser?.phone ?? '';
    return AppScaffold(
      canGoBack: false,
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
        create: (_) => getIt<SaveUserProfileCubit>(),
        child: RegisterPageBody(
          userId: userId,
          phone: phone,
        ),
      ),
    );
  }
}
