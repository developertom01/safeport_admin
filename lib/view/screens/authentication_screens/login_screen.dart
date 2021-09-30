import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height * .8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 250,
              ),
              Text(
                "Sign in",
                style: textTheme.headline6?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontSize: 26,
                ),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Enter email", labelText: "Email"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Sign in",
                          style: textTheme.button?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Powered and supported by"),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/waho_biomars.png",
                    width: 250,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
