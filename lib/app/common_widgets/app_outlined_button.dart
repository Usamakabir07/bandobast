import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_styles.dart';
import '../utils/dimensions.dart';
import 'app_progress_indicator.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    required this.text,
    super.key,
    this.isLoading = false,
    this.width,
    this.textColor,
    this.textSize,
    this.onPressed,
    this.color,
    this.borderColor,
    this.fontWeight,
    this.prefixIcon,
    this.iconColor,
    this.bgColor,
    this.isGradient = false,
  });
  final String text;
  final bool isLoading;
  final bool? isGradient;
  final double? width;
  final Color? textColor;
  final double? textSize;
  final VoidCallback? onPressed;

  final Color? color;
  final Color? borderColor;
  final Color? iconColor;
  final Color? bgColor;
  final FontWeight? fontWeight;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(borderRadius100),
        onTap: isLoading ? () {} : onPressed,
        child: Container(
          height: height50,
          width: width ?? double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: padding10,
            vertical: padding1,
          ),
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(
              color: borderColor!,
              width: width1,
            ),
            // color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(borderRadius100),
          ),
          child: Center(
            child: isLoading
                ? const AppProgressIndicator()
                : prefixIcon != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          prefixIcon!,
                          // height: height30,
                          // width: width30,
                          const SizedBox(width: width6),
                          Text(
                            text,
                            textAlign: TextAlign.center,
                            style: AppStyles.titleSmallBoldProxima.copyWith(
                              color: textColor ?? AppColors.gravel,
                            ),
                          ),
                        ],
                      )
                    : Text(
                        text,
                        textAlign: TextAlign.center,
                        style: AppStyles.titleSmallBoldProxima.copyWith(
                          color: textColor ?? AppColors.white,
                        ),
                      ),
          ),
        ),
      );
}
