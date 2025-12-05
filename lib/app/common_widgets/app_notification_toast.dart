import 'package:fluttertoast/fluttertoast.dart';

import '../themes/app_colors.dart';
import '../utils/dimensions.dart';

class AppNotificationToast {
  static void show(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.gravel,
      textColor: AppColors.white,
      fontSize: fontSize14,
    );
  }
}
