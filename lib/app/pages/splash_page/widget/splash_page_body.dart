import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/app_progress_indicator.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
