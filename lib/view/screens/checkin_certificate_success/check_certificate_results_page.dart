import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

class CheckCertificateResultsPage extends StatelessWidget {
  const CheckCertificateResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "Checkin certificate result",
          style: textTheme.headline6?.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: 500,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        margin: EdgeInsets.only(
          top: 40,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 140,
                    ),
                    Text(
                      "Travel certificate",
                      style: textTheme.headline6
                          ?.copyWith(color: customBlueColor, fontSize: 23),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "GH",
                          style: textTheme.headline4?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Ghana",
                          style: textTheme.headline6?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    FaIcon(
                      FontAwesomeIcons.plane,
                      size: 30,
                      color: Colors.grey.shade600,
                    ),
                    Column(
                      children: [
                        Text(
                          "NG",
                          style: textTheme.headline4?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Nigeria",
                          style: textTheme.headline6?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Thomas Sarpong",
                      style: textTheme.headline6
                          ?.copyWith(color: Colors.grey.shade600, fontSize: 23),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Passport Number",
                          style: textTheme.bodyText1?.copyWith(
                            color: customBlueColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "G123343424",
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
                          "Airline",
                          style: textTheme.bodyText1?.copyWith(
                            color: customBlueColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Passport Number Ailines lim.",
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
                          "Flight Number",
                          style: textTheme.bodyText1?.copyWith(
                            color: customBlueColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "HJ343234",
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
    );
  }
}
