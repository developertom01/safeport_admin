import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height / 2,
          // width: size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 250,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Powered by",
                    style: textTheme.bodyText1?.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/waho_biomars.png",
                    width: 200,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: size.width,
        alignment: Alignment.center,
        height: 50,
        child: SpinKitWave(
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
      ),
    );
  }
}
