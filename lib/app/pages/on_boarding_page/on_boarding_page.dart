import "package:auto_route/annotations.dart";
import "package:bandobast/app/pages/on_boarding_page/widget/on_boarding_body.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:flutter/material.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) => const AppScaffold(
        canGoBack: false,
        backgroundColor: AppColors.white,
        body: OnboardingBody(),
      );
}
