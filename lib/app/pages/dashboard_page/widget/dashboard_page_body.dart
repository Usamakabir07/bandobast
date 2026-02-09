import 'package:bandobast/app/common_widgets/app_scaffold.dart';
import 'package:bandobast/app/pages/dashboard_page/widget/dashboard_side_bar.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/domain/entity/response/profile/get_user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../home_page/home_page.dart';
import '../../request_page/request_page.dart';

class DashboardPageBody extends HookWidget {
  const DashboardPageBody({super.key, required this.profile});
  final GetUserProfile profile;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return AppScaffold(
        showAppBar: true,
        backgroundColor: Colors.white,
        drawer: DashboardDrawer(profile: profile),
        leadingIcon: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        title: Text(
          "Bandobast",
          textAlign: TextAlign.center,
          style: AppStyles.headLineSmallBold.copyWith(
            color: AppColors.seaGreen,
            fontWeight: FontWeight.w900,
          ),
        ),
        body: getPage(selectedIndex.value));
  }
}

Widget getPage(int index) {
  switch (index) {
    case 0:
      return const HomePage();
    case 1:
      return const RequestPage();
    case 2:
      return const Text("Profile Page");
    default:
      return const Center(child: Text('Unknown page'));
  }
}
