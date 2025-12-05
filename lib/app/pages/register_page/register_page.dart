import "package:auto_route/annotations.dart";
import "package:bandobast/app/pages/register_page/widget/register_page_body.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:flutter/material.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) => const AppScaffold(
        canGoBack: true,
        backgroundColor: AppColors.white,
        body: RegisterPageBody(),
      );
}
