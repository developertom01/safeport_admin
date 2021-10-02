import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:safeport_admin/services/login_request.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void login() {
    final data = {
      "email": emailController.text,
      "password": passwordController.text
    };
    try {
      loginRequest(data)
          .then((response) {})
          .catchError((error) => {printError(info: error)})
          .timeout(Duration(seconds: 30), onTimeout: () {
        //Todo: Show error
      });
    } catch (e) {
      //Todo: Show errors
    }
  }
}
