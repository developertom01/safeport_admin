import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:safeport_admin/services/dashboard_information_requests.dart';
import 'package:safeport_admin/utils/local_data/local_storage.dart';
import 'package:safeport_admin/utils/logout.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class DashboardInformationController extends GetxController {
  final RxInt checkinCetificateCount = 0.obs;
  RxBool loading = false.obs;

  @override
  onInit() {
    getCheckedInCount();
    super.onInit();
  }

  Future getCheckedInCount() async {
    final token = await getAuthToken();
    if (token == null) {
      return logout();
    }
    loading.value = true;

    try {
      var response = await getCertificateCountRequest(token);
      loading.value = false;
      if (response.statusCode == 200) {
        print(response.body);
        final decoded = json.decode(response.body);
        checkinCetificateCount.value = decoded["check_count"] as int;
      } else {
        log(response.body);
        // showErrorToast(title)
      }
    } on SocketException {
      showErrorToast("Network error. Check internet connection");
    } on TimeoutException {
      showErrorToast("Timeout!, Check internet connection");
    } catch (e) {
      loading.value = false;
      showErrorToast("External error occured");
    }
  }
}
