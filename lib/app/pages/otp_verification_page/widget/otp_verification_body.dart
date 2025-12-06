import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/common_widgets/app_outlined_button.dart';
import 'package:bandobast/app/common_widgets/connectivity/connectivity_gate.dart';
import 'package:bandobast/app/router/app_router.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/default_input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pinput.dart';

import '../../../common_widgets/app_elevated_button.dart';
import '../../../utils/dimensions.dart';

class OtpVerificationBody extends HookWidget {
  const OtpVerificationBody({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    // final lastRequestRef = useRef(null);
    // final isDark = context.watch<ThemeCubit>().state == ThemeMode.dark;
    const int otpLength = 4;
    final otpController = useTextEditingController();
    final focusNode = useFocusNode();
    final hasError = useState(false);
    final countdown = useState(30);
    final canResend = useState(false);
    final timerRef = useRef<Timer?>(null);
    useListenable(otpController);

    useEffect(() {
      void startTimer() {
        countdown.value = 30;
        canResend.value = false;

        timerRef.value?.cancel();
        timerRef.value = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (countdown.value <= 1) {
            timer.cancel();
            canResend.value = true;
          } else {
            countdown.value--;
          }
        });
      }

      startTimer();
      return () => timerRef.value?.cancel();
    }, []);

    final defaultPinTheme = PinTheme(
      width: height56,
      height: width56,
      textStyle: AppStyles.headLineSmallBold.copyWith(color: AppColors.white),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: double01),
        borderRadius: BorderRadius.circular(borderRadius12),
        border: Border.all(
          color: hasError.value ? AppColors.errorColor : AppColors.black,
        ),
      ),
    );

    void verifyOtp() {
      // final request = VerifyUserRequest(
      //   phoneNumber: phoneNumber.replaceAll("+", ""),
      //   token: otpController.text,
      // );
      // lastRequestRef.value = request;
      // context.read<VerifyUserCubit>().verifyUser(request: request);
      context.router.replaceAll([const DashboardRoute()]);
    }

    void sendOtpAgain() {
      // final request = LoginUserRequest(phoneNumber: phoneNumber);
      // context.read<LoginCubit>().loginUser(request: request);
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(padding12),
      child: ConnectivityGate(
        onRetry: () {
          // final req = lastRequestRef.value;
          // if (req != null) {
          //   context.read<VerifyUserCubit>().verifyUser(request: req);
          // }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "We sent the OTP to ",
                      style: AppStyles.bodyMedium,
                    ),
                    Text(
                      phoneNumber,
                      textAlign: TextAlign.center,
                      style: AppStyles.bodyLargeBold,
                    ),
                  ],
                ),
                const SizedBox(height: height6),
                const SizedBox(height: 24),
                Pinput(
                  length: otpLength,
                  controller: otpController,
                  focusNode: focusNode,
                  defaultPinTheme: defaultLightPinTheme(
                    hasError: hasError,
                  ),
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        borderRadius12,
                      ),
                      border: Border.all(
                        color: AppColors.seaGreen,
                        width: width2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.seaGreen.withValues(alpha: double03),
                          blurRadius: radius20,
                        ),
                      ],
                    ),
                  ),
                  // onCompleted: (_) => verifyOtp(),
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                ),
                const SizedBox(height: height16),
                if (hasError.value)
                  Text(
                    "Invalid OTP. Please try again",
                    style: AppStyles.bodyLargeBold.copyWith(
                      color: AppColors.errorColor,
                    ),
                  ),
              ],
            ),
            Column(
              children: [
                AppElevatedButton(
                  onPressed:
                      otpController.text.length == otpLength ? verifyOtp : null,
                  text: "Verify and Continue",
                  textColor: otpController.text.length == otpLength
                      ? AppColors.white
                      : AppColors.boulder,
                  color: otpController.text.length == otpLength
                      ? AppColors.seaGreen
                      : AppColors.iron,
                ),
                const SizedBox(height: height10),
                AppOutlinedButton(
                  onPressed: () {
                    canResend.value = false;
                    countdown.value = 30;
                    timerRef.value?.cancel();
                    timerRef.value = Timer.periodic(
                      const Duration(seconds: 1),
                      (timer) {
                        if (countdown.value <= 1) {
                          timer.cancel();
                          canResend.value = true;
                        } else {
                          countdown.value--;
                        }
                      },
                    );
                    sendOtpAgain();
                  },
                  borderColor: AppColors.boulder,
                  textColor: AppColors.boulder,
                  text: canResend.value
                      ? "Resend code"
                      : "Resend available in 00:${countdown.value.toString().padLeft(2, '0')}",
                ),
                const SizedBox(height: height30),
                SizedBox(
                    width: MediaQuery.of(context).size.width * double09,
                    child: Text.rich(
                      TextSpan(
                        text: "Didn't receive the code? ",
                        style: AppStyles.bodyMedium,
                        children: [
                          TextSpan(
                            text: "Contact support",
                            style: AppStyles.bodyMedium.copyWith(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                color: AppColors.seaGreen),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
