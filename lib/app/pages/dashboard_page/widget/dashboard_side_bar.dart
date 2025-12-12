import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * double08,
      child: SafeArea(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bandobast",
                  textAlign: TextAlign.center,
                  style: AppStyles.headLineSmallBold.copyWith(
                    color: AppColors.seaGreen,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: height30,
            ),
            ListTile(
              tileColor: AppColors.iceberg,
              leading: const CircleAvatar(
                backgroundColor: AppColors.seaGreen,
                child: Icon(
                  Icons.person,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: iconSize16,
              ),
              title: Text(
                "Usama",
                style: AppStyles.bodyLargeBold,
              ),
              subtitle: Row(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                    ],
                  ),
                  Text(
                    " 4.7 (189)",
                    style: AppStyles.labelMedium,
                  )
                ],
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard_outlined),
              title: const Text("Dashboard"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text("Settings"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text("Help"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.support_agent_outlined),
              title: const Text("Support"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
