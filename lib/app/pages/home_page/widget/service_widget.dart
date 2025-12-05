import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_styles.dart';
import '../../../utils/dimensions.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.icon,
    required this.serviceName,
  });
  final String serviceName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white.withValues(alpha: double09),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.seaGreen,
          ),
          const SizedBox(height: height10),
          Text(
            serviceName,
            style: AppStyles.bodyMediumBold,
          ),
        ],
      ),
    );
  }
}
