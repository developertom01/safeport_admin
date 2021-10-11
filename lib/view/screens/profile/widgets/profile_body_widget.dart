import 'package:flutter/material.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Container(
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
                    "Thomas Sarpong",
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
                    "sarpongthomasd@gmail.com",
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
                    "+23335444323",
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
                    "Nationality",
                    style: textTheme.bodyText1?.copyWith(
                      color: customBlueColor,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Nigerian",
                    style: textTheme.bodyText1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}
