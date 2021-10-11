import 'dart:convert';

import 'package:bot_toast/bot_toast.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/services/checkin_certificate_request.dart';
import 'package:safeport_admin/utils/ui_itils/custom_loaders.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class CheckCertificateController extends GetxController {
  Rx<CountryCode> country = CountryCode(code: "GH", name: "Ghana").obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController codeEditingController = TextEditingController();

  onChangeCountry(CountryCode code) {
    country.value = code;
  }

  scanCode() async {
    try {
      // String scanned = await FlutterBarcodeScanner.scanBarcode(
      //     "black", "cancel", true, ScanMode.DEFAULT);
      // codeEditingController.text = scanned;
      showErrorToast("Failed to mount scanner");
    } on PlatformException catch (e) {
      print(e);
      showErrorToast("Camera permission denied");
    } catch (e) {
      print(e);
      showErrorToast("Failed to mount scanner");
    }
  }

  submit() async {
    if (formKey.currentState!.validate()) {
      showCustomLoader(scaffoldKey.currentState!.context);
      // print(info: country.value.name);
      final data = {
        "country": country.value.name,
        "code": codeEditingController.text
      };
      try {
        checkCertificateRequest(data).then((response) {
          if (response.statusCode == 200) {
            print(response.body);
          } else {
            BotToast.closeAllLoading();
            final decoded = json.decode(response.body);
            print(response.body);
            showErrorNotification(decoded["message"]);
            Get.toNamed("/CheckCertificateResultsPage");
          }
        }).catchError((error) {
          BotToast.closeAllLoading();
          showErrorToast("Unexpected error occured");
        }).timeout(Duration(seconds: 30), onTimeout: () {
          BotToast.closeAllLoading();
          showErrorToast("Timeout! Network error");
        });
      } catch (e) {
        BotToast.closeAllLoading();
        showErrorToast("Unexpected error occured");
      }
    }
  }
}
