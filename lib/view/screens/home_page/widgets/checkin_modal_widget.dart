import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/check_certificate_controlle.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';
import 'package:safeport_admin/view/shared/custom_country_picker.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CheckinModalWidget extends StatelessWidget {
  final CheckCertificateController _checkCertificateController =
      Get.find<CheckCertificateController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Container(
        width: size.width * .72,
        decoration: BoxDecoration(
            color: customWhiteColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                "Check in certificate",
                style: textTheme.headline5?.copyWith(
                  color: customBlueColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: _checkCertificateController.formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller:
                          _checkCertificateController.codeEditingController,
                      decoration: InputDecoration(
                        labelText: "Code",
                      ),
                      validator: (code) {
                        if (code == null || code.isEmpty) {
                          return "Checkin code is required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 60,
                      width: size.width,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                          Colors.grey,
                        )),
                        icon: FaIcon(
                          FontAwesomeIcons.qrcode,
                        ),
                        onPressed: _checkCertificateController.scanCode,
                        label: Text("Scan code"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => CutomCountryPicker(
                          countryCode:
                              _checkCertificateController.country.value.code ??
                                  "",
                          onChanged:
                              _checkCertificateController.onChangeCountry),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      width: size.width,
                      child: ElevatedButton.icon(
                        icon: FaIcon(
                          FontAwesomeIcons.check,
                        ),
                        onPressed: _checkCertificateController.submit,
                        label: Text("Check certificate"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
