import 'package:bandobast/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pinput.dart';

import '../../../common_widgets/app_elevated_button.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/dimensions.dart';

class OtpPageBody extends HookWidget {
  const OtpPageBody({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final otpController = useTextEditingController();
    final focusNode = useFocusNode();
    final hasError = useState(false);

    const correctOtp = '123456';

    final defaultPinTheme = PinTheme(
      width: width56,
      height: height56,
      textStyle: AppStyles.bodyLarge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius8),
        border: Border.all(color: AppColors.iron),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius8),
        border: Border.all(color: AppColors.redWine),
      ),
    );

    void verifyOtp() {
      if (otpController.text == correctOtp) {
        hasError.value = false;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  color: AppColors.white,
                  size: iconSize18,
                ),
                Text(
                  ' OTP Verified Successfully!',
                  style: AppStyles.bodyMediumBold,
                ),
              ],
            ),
            backgroundColor: AppColors.seaGreen,
          ),
        );
        // Navigate or trigger logic here
      } else {
        hasError.value = true;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: height40),
            Text(
              'Verification',
              style:
                  AppStyles.headLineSmall.copyWith(color: AppColors.seaGreen),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: height40),
            Text(
              'We’ve sent a 6-digit OTP to your number. Please check your WhatsApp.',
              style: AppStyles.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: height20),
            Text(
              phoneNumber,
              style: AppStyles.titleSmallBold,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: height32),
            Pinput(
              length: 6,
              controller: otpController,
              focusNode: focusNode,
              defaultPinTheme: defaultPinTheme,
              errorPinTheme: errorPinTheme,
              onCompleted: (_) => verifyOtp(),
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
            ),
            const SizedBox(height: height16),
            if (hasError.value)
              Text(
                'Invalid OTP. Please try again.',
                style: AppStyles.bodyMedium.copyWith(color: AppColors.redWine),
              ),
            const SizedBox(height: height20),
            AppElevatedButton(
              onPressed: verifyOtp,
              text: 'Verify OTP',
              width: width150,
            ),
            const SizedBox(height: height30),
            Text(
              "Didn't receive the OTP?",
              style: AppStyles.bodyMediumBold,
            ),
            const SizedBox(height: height10),
            InkWell(
              onTap: () {},
              child: Text(
                "Resend",
                style: AppStyles.titleSmallBoldProxima.copyWith(
                  color: AppColors.seaGreen,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.seaGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
