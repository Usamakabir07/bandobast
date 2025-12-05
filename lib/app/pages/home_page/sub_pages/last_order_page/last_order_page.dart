import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class LastOrderPage extends StatelessWidget {
  const LastOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {
        'icon': Icons.cleaning_services,
        'name': 'Cleaners',
      },
      {
        'icon': Icons.ac_unit,
        'name': 'AC service',
      },
      {
        'icon': Icons.electrical_services,
        'name': 'Electricians',
      },
      {
        'icon': Icons.plumbing,
        'name': 'Plumbers',
      },
      {
        'icon': Icons.handshake_rounded,
        'name': 'Company',
      },
      {
        'icon': Icons.cast_for_education,
        'name': 'Consultation',
      },
      {
        'icon': Icons.drive_eta_rounded,
        'name': 'Drivers',
      },
      {
        'icon': Icons.directions_run,
        'name': 'Errand service',
      },
      {
        'icon': Icons.more_horiz_rounded,
        'name': 'More',
      },
    ];
    return ListView.builder(
      itemCount: services.length - 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: padding8),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: padding8),
            tileColor: AppColors.iron.withValues(alpha: double03),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius10)),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/86590370?v=4',
              ),
            ),
            title: Text('Person ${index + 1}'),
            subtitle: Text(
              services[index]['name'],
              style:
                  AppStyles.bodyMediumBold.copyWith(color: AppColors.seaGreen),
            ),
            trailing: Column(
              children: [
                Text(
                  'You paid',
                  style:
                      AppStyles.labelSmall.copyWith(color: AppColors.seaGreen),
                ),
                Text(
                  'Rs. ${165 * (index + 1)}',
                  style: AppStyles.titleSmallBold,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
