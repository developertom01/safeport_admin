import 'package:flutter/material.dart';

class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/error.png",
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
        ),
      ],
    );
  }
}
