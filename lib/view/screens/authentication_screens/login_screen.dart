import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      key: _loginController.scaffoldKey,
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
                  key: _loginController.loginFormKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          controller: _loginController.emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: "Enter email", labelText: "Email"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email  must not be blank or empty";
                            } else if (!value.isEmail)
                              return "Enter a valid email";
                            else
                              return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _loginController.passwordController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password  must not be blank or empty";
                            } else
                              return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: size.width,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: _loginController.login,
                            child: Text(
                              "Sign in",
                              style: textTheme.button?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
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
