import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../common_widgets/app_navigation_bar.dart';
import '../../home_page/home_page.dart';
import '../../request_page/request_page.dart';

class DashboardPageBody extends HookWidget {
  const DashboardPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    List<Widget> dashboardScreens = [
      const HomePage(),
      const RequestPage(),
      const Text('Profile page')
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: dashboardScreens[selectedIndex.value]),
        AppNavigationBar(selectedIndex: selectedIndex),
      ],
    );
  }
}
