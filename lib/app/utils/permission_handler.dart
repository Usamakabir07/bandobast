import 'package:permission_handler/permission_handler.dart';

Future<bool> checkLocationPermissions() async {
  final serviceStatus = await Permission.location.serviceStatus;
  if (!serviceStatus.isEnabled) {
    return false;
  }
  final status = await Permission.location.request();
  if (status.isGranted) return true;
  if (status.isDenied) return false;
  if (status.isPermanentlyDenied) {
    await openAppSettings();
    return false;
  }
  return false;
}
