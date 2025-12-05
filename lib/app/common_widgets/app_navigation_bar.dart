import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../themes/app_colors.dart';
import '../themes/app_styles.dart';

class AppNavigationBar extends HookWidget {
  const AppNavigationBar({
    super.key,
    required this.selectedIndex,
  });
  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex.value,
      onTap: (index) {
        selectedIndex.value = index;
      },
      selectedItemColor: AppColors.seaGreen,
      selectedLabelStyle: AppStyles.bodyMediumBold,
      backgroundColor: AppColors.white.withValues(alpha: double09),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit_note_outlined),
          activeIcon: Icon(Icons.edit_note),
          label: 'Requests',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          activeIcon: Icon(Icons.person),
          label: 'Me',
        ),
      ],
    );
  }
}
