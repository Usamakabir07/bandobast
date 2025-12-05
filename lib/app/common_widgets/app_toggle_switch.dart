import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_styles.dart';
import '../utils/dimensions.dart';

class AppToggleSwitch extends StatelessWidget {
  const AppToggleSwitch({
    required this.value,
    required this.label,
    required this.onChanged,
    super.key,
  });

  final bool value;
  final String label;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: value,
          thumbColor: WidgetStateProperty.all(AppColors.white),
          activeTrackColor: AppColors.seaGreen,
          inactiveTrackColor: AppColors.iron,
          onChanged: onChanged,
        ),
        const SizedBox(width: width4),
        Text(
          label,
          style: AppStyles.bodyLarge.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
