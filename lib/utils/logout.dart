import 'package:get/get.dart';
import 'package:safeport_admin/utils/local_data/local_storage.dart';

Future logout() async {
  await deleteAuthToken();
  await deleteUserCode();
  await deleteUserEmail();
  await deleteIsAuthenticated();
  Get.offAllNamed("/LoginScreen");
}
