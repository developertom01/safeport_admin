import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController(text: "Thomas");
  TextEditingController emailController =
      TextEditingController(text: "sarpong@gmail.com");
  TextEditingController phoneNumberController =
      TextEditingController(text: "023454234234");
  TextEditingController nationalityController =
      TextEditingController(text: "Ghanainan");

}
