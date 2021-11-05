import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/dashboard_information_controller.dart';
import 'package:safeport_admin/models/certificate_check_results.dart';
import 'package:safeport_admin/services/checkin_certificate_request.dart';
import 'package:safeport_admin/utils/network/error_interceptors.dart';
import 'package:safeport_admin/utils/ui_itils/custom_loaders.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class CheckCertificateController extends GetxController {
  Rx<CountryCode> country = CountryCode(code: "NG", name: "Nigeria").obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController codeEditingController = TextEditingController();

  Rx<CertificateCheckResult>? certificateCheckResult;

  onChangeCountry(CountryCode code) {
    country.value = code;
  }

  scanCode() async {
    try {
      String scanned = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "stop", true, ScanMode.QR);
      if (scanned == "-1") showErrorToast("No code scanned");
      else 
      codeEditingController.text = scanned;
    } on PlatformException catch (e) {
      print(e);
      showErrorToast("Camera permission denied");
    } catch (e) {
      print(e);
      printError(info: e.toString());
      showErrorToast("Failed to mount scanner");
    }
  }

  submit() async {
    if (formKey.currentState!.validate()) {
      showCustomLoader();
      // print(info: country.value.name);
      final data = {
        "country": country.value.name,
        "code": codeEditingController.text
      };
      try {
        var response = await checkCertificateRequest(data);
        BotToast.closeAllLoading();
        if (response.statusCode == 200) {
          print(json.decode(response.body)["data"]);
          certificateCheckResult =
              certificateCheckResultFromJson(response.body).obs;
          codeEditingController.clear();
          // Get.back();
          country.value = CountryCode(code: "NG", name: "Nigeria");
          showSuccessToast("Succefully checked  certificate");
          Get.find<DashboardInformationController>().getCheckedInCount();
          // Get.find<CheckedCodesHistoryController>().fetchCheckedCodesHistory();
          Get.offNamed("/CheckCertificateResultsPage");
          print(certificateCheckResult?.value);
        } else {
          interceptError(response);
        }
      } on SocketException {
        BotToast.closeAllLoading();
        showErrorToast("Network error. Check internet connection");
      } on TimeoutException {
        BotToast.closeAllLoading();
        showErrorToast("Timeout. Check connection");
      } catch (e) {
        BotToast.closeAllLoading();
        BotToast.closeAllLoading();
        showErrorToast("Unexpected error occured");
      }
    }
  }
}
