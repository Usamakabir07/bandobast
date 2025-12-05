import "package:auto_route/annotations.dart";
import "package:bandobast/app/pages/otp_page/widget/otp_page_body.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:flutter/material.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class OtpPage extends StatelessWidget {
  const OtpPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: true,
        backgroundColor: AppColors.white,
        body: OtpPageBody(phoneNumber: phoneNumber),
      );
}
