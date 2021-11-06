import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/models/user_profile.dart';
import 'package:safeport_admin/services/user_profile_request.dart';
import 'package:safeport_admin/utils/network/error_interceptors.dart';
import 'package:safeport_admin/utils/ui_itils/custom_loaders.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class UserProfileController extends GetxController {
  Rx<UserProfile>? userProfile;
  RxString errorMessage = "".obs;
  RxBool isFailed = false.obs;
  RxBool isLoading = false.obs;

  onInit() {
    fetchProfile();
    super.onInit();
  }

  fetchProfile() async {
    isLoading.value = true;
    showCustomLoader();
    try {
      final response = await getProfileRequest();
      isLoading.value = false;
      BotToast.closeAllLoading();
      if (response.statusCode == 200) {
        print(response.body);
        userProfile = userProfileFromJson(response.body).obs;
      } else {
        interceptError(response);
      }
    } on SocketException {
      isLoading.value = false;
      BotToast.closeAllLoading();
      isFailed.value = true;
      errorMessage.value = "Network error! Check internet connection.";
      showErrorToast("An error occured");
    } on TimeoutException {
      isLoading.value = false;
      BotToast.closeAllLoading();
      isFailed.value = true;
      errorMessage.value = "Timeout! Check internet connection";
      showErrorToast("An error occured");
    } catch (e) {
      printError(info: e.toString());

      isLoading.value = false;
      BotToast.closeAllLoading();
      isFailed.value = true;
      errorMessage.value = "Unexpected error occured";
      showErrorToast("An error occured");
    }
  }
}
