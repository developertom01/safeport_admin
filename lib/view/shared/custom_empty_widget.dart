import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomEmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/empty.png",
          width: size.width,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Opps! No data available",
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
