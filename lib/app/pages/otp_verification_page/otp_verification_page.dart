import "package:auto_route/annotations.dart";
import "package:auto_route/auto_route.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:bandobast/app/themes/app_styles.dart";
import "package:flutter/material.dart";
import "../../common_widgets/app_scaffold.dart";
import "widget/otp_verification_body.dart" show OtpVerificationBody;

@RoutePage()
class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Text(
          "Bandobast",
          textAlign: TextAlign.center,
          style: AppStyles.headLineSmallBold.copyWith(
            color: AppColors.seaGreen,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: AppColors.white,
      body: OtpVerificationBody(phoneNumber: phoneNumber),
    );
  }
}
