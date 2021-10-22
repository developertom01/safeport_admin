import 'package:flutter/material.dart';
import 'package:safeport_admin/models/checked_codes_hostroy.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

class CheckedCodeDetail extends StatelessWidget {
  const CheckedCodeDetail({
    Key? key,
    required this.theme,
    required this.history,
  }) : super(key: key);

  final ThemeData theme;
  final CheckedCodesHistory history;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: customWhiteColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(
            10,
          ))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Traveller certificate",
              style: theme.textTheme.headline5,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Traveler name: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.externalTravellerFirstname} ${history.externalTravellerLastname} ${history.externalTravellerOthername}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Traveler ID type: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.externalTravellerIdtype}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Traveler ID: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.externalTravellerId}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test Name: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.laboratoryTestName}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Country: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.country}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test code: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.certificateId}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test result: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.result}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test type: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.laboratoryTestType}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbouratory name: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.laboratoryName}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test kit: ",
                  style: theme.textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${history.laboratoryTestKit}",
                      maxLines: 3,
                      style: theme.textTheme.bodyText1?.copyWith(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
