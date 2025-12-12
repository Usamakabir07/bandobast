import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../home_page/home_page.dart';
import '../../request_page/request_page.dart';

class DashboardPageBody extends HookWidget {
  const DashboardPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    return getPage(selectedIndex.value);
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
