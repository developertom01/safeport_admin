import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/dashboard_information_controller.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';
import 'package:safeport_admin/utils/ui_itils/custom_overlay_widgets.dart';
import 'package:safeport_admin/view/screens/home_page/widgets/checkin_modal_widget.dart';

class DahboardWidget extends StatelessWidget {
  final DashboardInformationController _informationController =
      Get.put(DashboardInformationController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Obx(
          ()=> Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Dashobard",
                  style: textTheme.headline4,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width,
                  height: 60,
                  child: ElevatedButton(
                    child: Text(
                      "Check Certificate",
                      style: textTheme.button?.copyWith(
                        color: customWhiteColor,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      showCustomButtomSheet(CheckinModalWidget());
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Total checks",
                                style: textTheme.headline6?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                 ( _informationController.loading.value ||_informationController.summary?.value == null )?"0":'${_informationController.summary?.value.total}',
                                  style: textTheme.headline3?.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                              ),
                            )
                          ],
                        ),
                        height: size.height * .25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/box 1@5x.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: size.height * .25,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Checks Today",
                                style: textTheme.headline6?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _informationController.summary?.value == null?"0":'${_informationController.summary?.value.daily}',
                                style: textTheme.headline3?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/box 3@5x.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: size.height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/box 2@5x.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Checks this month",
                                style: textTheme.headline6?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                               ( _informationController.loading.value ||_informationController.summary?.value == null )?"0": '${_informationController.summary?.value.monthly}',
                                style: textTheme.headline3?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Checks this year",
                                style: textTheme.headline6?.copyWith(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Text(
                              ( _informationController.loading.value ||_informationController.summary?.value == null )?"0": '${_informationController
                                      .summary?.value.yearly
                                      .toString()}',
                                  style: textTheme.headline3?.copyWith(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                            
                          ],
                        ),
                        height: size.height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/box 4@5x.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Column(
                    children: [
                      Text("Powered and supported by"),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/images/waho_biomars.png",
                        width: 200,
                      )
                    ],
                  ),
                ),
              ],
            ),
        ),
        ),
    );
  }
}
