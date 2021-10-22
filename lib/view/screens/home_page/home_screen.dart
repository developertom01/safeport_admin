import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/view/screens/home_page/widgets/dahsboard_widget.dart';
import 'package:safeport_admin/view/screens/home_page/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _checkCertificateController.scaffoldKey,
      appBar: AppBar(
        leadingWidth: 90,
        leading: Builder(
            builder: (BuildContext context) => TextButton(
                child: Image.asset(
                  "assets/images/menu@5x.png",
                  width: 35,
                ),
                onPressed: () => Scaffold.of(context).openDrawer())),
        title: Image.asset(
          "assets/images/logo.png",
          width: 180,
        ),
        actions: [
          InkWell(
            radius: 20,
            onTap: () {
              Get.toNamed("/ProfileScreen");
            },
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
      drawer: DrawerWidget(),
      body: DahboardWidget(),
    );
  }
}
