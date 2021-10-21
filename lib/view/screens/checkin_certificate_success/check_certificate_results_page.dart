import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/check_certificate_controlle.dart';
import 'package:safeport_admin/models/certificate_check_results.dart';
import 'package:safeport_admin/utils/datetime_formatter/format_date.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

class CheckCertificateResultsPage extends StatelessWidget {
  final CheckCertificateController _checkCertificateController =
      Get.find<CheckCertificateController>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    CertificateCheckResult certificateCheckResult =
        _checkCertificateController.certificateCheckResult!.value;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 100,
            ),
            Text(
              "Test certificate",
              style: textTheme.headline6
                  ?.copyWith(color: customBlueColor, fontSize: 20),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            "Patient information",
                            style: textTheme.headline6?.copyWith(
                                color: Colors.grey.shade600, fontSize: 23),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Traveller Name",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "${certificateCheckResult.externalTravellerFirstname} ${certificateCheckResult.externalTravellerLastname}  ${certificateCheckResult.externalTravellerOthername}",
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Traveller Travel Id type",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "${certificateCheckResult.externalTravellerIdtype}",
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Traveller Id",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '${certificateCheckResult.externalTravellerId}',
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Country",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '${certificateCheckResult.country}',
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Car 2

            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            "Test information",
                            style: textTheme.headline6?.copyWith(
                                color: Colors.grey.shade600, fontSize: 23),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Test Name",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "${certificateCheckResult.laboratoryName}",
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Test type",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    certificateCheckResult.laboratoryTestType,
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Result",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '${certificateCheckResult.result}',
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Certified Id",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '${certificateCheckResult.certificateId}',
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Test kit",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '${certificateCheckResult.laboratoryTestKit}',
                                    maxLines: 3,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Uploaded at",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '${formatDateTime(certificateCheckResult.dateUploaded)}',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sample collection date",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '${formatDateTime(certificateCheckResult.laboratorySampleDatetime)}',
                                    maxLines: 2,
                                    style: textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Test date",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '${formatDateTime(certificateCheckResult.laboratoryTestDatetime)}',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
