import 'dart:convert';
import 'dart:developer';

import 'package:bot_toast/bot_toast.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:safeport_admin/services/login_request.dart';
import 'package:safeport_admin/utils/local_data/local_storage.dart';
import 'package:safeport_admin/utils/ui_itils/custom_loaders.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void login() {
    if (loginFormKey.currentState!.validate()) {
      final data = {
        "username": emailController.text,
        "password": passwordController.text
      };
      showCustomLoader(scaffoldKey.currentState!.context);
      try {
        loginRequest(data).then((response) {
          BotToast.closeAllLoading();
          if (response.statusCode == 200) {
            final decoded = json.decode(response.body);
            showSuccessToast("You have logged in successfully");
            setAuthToken(decoded["token"]);
            setUserEmail(decoded["email"]);
            setIsAuthenticated(true);
            setUserCode(decoded["user_code"]);
            Get.toNamed("/HomeScreen");
          } else {
            printError(info: "Error");
            print(response.statusCode);
            showErrorToast("Invalid credentials");
          }
        }).catchError((error) {
          BotToast.closeAllLoading();
          printError(info: error);
        }).timeout(Duration(seconds: 30), onTimeout: () {
          showErrorToast("Timeout! Check internet connection");
          BotToast.closeAllLoading();
        });
      } catch (error) {
        //Todo: Show errors
      }
    }
  }
}
