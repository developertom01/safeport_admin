import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/dashboard_information_controller.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

class DahboardWidget extends StatelessWidget {
  final DashboardInformationController _informationController =
      Get.put(DashboardInformationController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dashobard",
            style: textTheme.headline4,
          ),
          Form(
              child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Enter travel code"),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 59,
                    child: ElevatedButton(
                      onPressed: () {
                        showSuccessToast("Hellooooooo");
                      },
                      child: Text(
                        "Check",
                        style: textTheme.button?.copyWith(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
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
                          "Checks Today",
                          style: textTheme.headline6?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "0",
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
                          "Checks this week",
                          style: textTheme.headline6?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "0",
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
                          "0",
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
                        child: Obx(
                          () => Text(
                            _informationController.checkinCetificateCount.value
                                .toString(),
                            style: textTheme.headline3?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      )
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
    );
  }
}
