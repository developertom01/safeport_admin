import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/view/screens/profile/widgets/profile_body_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
            )),
        title: Image.asset(
          "assets/images/logo.png",
          width: 180,
        ),
        actions: [
          InkWell(
            radius: 20,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade400,
              child: Text(
                "A",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ProfileBodyWidget(),
    );
  }
}
