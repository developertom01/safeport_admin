import 'package:flutter/material.dart';
import 'package:safeport_admin/view/screens/home_page/widgets/dahsboard_widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leadingWidth: 90,
        leading: TextButton(
          child: Image.asset(
            "assets/images/menu@5x.png",
            width: 35,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openEndDrawer();
          },
        ),
        title: Image.asset(
          "assets/images/logo.png",
          width: 180,
        ),
        actions: [
          InkWell(
            radius: 20,
            onTap: () {},
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
      drawer: Drawer(
        child: Container(),
      ),
      body: DahboardWidget(),
    );
  }
}
