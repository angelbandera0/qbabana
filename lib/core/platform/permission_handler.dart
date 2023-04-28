
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler{
  Future<bool> requestPermission(Permission permission) async {
    if (await permission.request().isGranted) {
      return true;
    } else {
      var result = await permission.request();
      return result == PermissionStatus.granted;
    }
  }
}