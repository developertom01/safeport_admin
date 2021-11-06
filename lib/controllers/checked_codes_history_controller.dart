import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:safeport_admin/models/checked_codes_hostroy.dart';
import 'package:http/http.dart' as http;
import 'package:safeport_admin/services/checked_codes_hostory_request.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class CheckedCodesHistoryController extends GetxController {
  RxList<CheckedCodesHistory> checkedCodesHistory = <CheckedCodesHistory>[].obs;
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    fetchCheckedCodesHistory();
    super.onInit();
  }

  void fetchCheckedCodesHistory() async {
    isLoading.value = true;
    try {
      final http.Response response = await checkedCodesHistoryRequest();
      isLoading.value = false;
      if (response.statusCode == 200) {
        print(response.body);
        checkedCodesHistory.value = checkedCodesHistoryFromJson(response.body);
      } else {
        var deoded = json.decode(response.body);
        showErrorNotification(deoded["message"]);
      }
    } on SocketException {
      isLoading.value = false;
      showErrorToast("Network error. Check internet connection");
    } on TimeoutException {
      isLoading.value = false;
      showErrorToast("WAHO Member State not responding (error 901).");
    } catch (e) {
      printError(info: e.toString());
      print(e);
      showErrorToast("Unnexpected error occured");
    }
  }
}
