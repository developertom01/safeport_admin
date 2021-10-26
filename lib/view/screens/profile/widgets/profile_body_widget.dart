import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/user_profile_controller.dart';
import 'package:safeport_admin/utils/logout.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';
import 'package:safeport_admin/view/shared/error_state_widget.dart';
import 'package:safeport_admin/view/shared/loading_state_widget.dart';

class ProfileBodyWidget extends StatelessWidget {
  final UserProfileController _profileController =
      Get.find<UserProfileController>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    print(_profileController.userProfile?.value);
    return Obx(
      () => _profileController.isLoading.value
          ? LoadingStateWidget()
          : _profileController.isFailed.value
              ? ErrorStateWidget(
                  title: "An error occured while fetcing profile",
                  subTitle: _profileController.errorMessage.value,
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "User Profile",
                        style: textTheme.headline4,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.grey.shade600,
                          child: Text(
                            "T",
                            style: textTheme.headline1?.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Name",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '${_profileController.userProfile?.value.user.firstName} ${_profileController.userProfile?.value.user.lastName}',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " Email",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '${_profileController.userProfile?.value.user.email}',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Phone",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '${_profileController.userProfile?.value.user.phoneNumber}',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "User code",
                                style: textTheme.bodyText1?.copyWith(
                                  color: customBlueColor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '${_profileController.userProfile?.value.user.userCode}',
                                style: textTheme.bodyText1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: size.width,
                        height: 45,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.error,
                          )),
                          onPressed: () {
                            Get.defaultDialog(
                                titlePadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                                title: "Are you sure you want to logout?",
                                content: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          logout();
                                        },
                                        child: Text(
                                          "Yes",
                                          style: textTheme.button?.copyWith(
                                            fontSize: 20,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Text(
                                          "No",
                                          style: textTheme.button?.copyWith(
                                            fontSize: 20,
                                            color: Theme.of(context).errorColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ));
                          },
                          child: Text(
                            "Logout",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
    );
  }
}
