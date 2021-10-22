import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .15,
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {
              Get.toNamed("/BookingHistoryScreen");
            },
            leading: Icon(
              Icons.list_alt_sharp,
            ),
            title: Text(
              "Checked codes",
              style: theme.textTheme.headline6,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          )
        ],
      ),
    );
  }
}
