import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeport_admin/controllers/edit_profile_controller.dart';
import 'package:safeport_admin/utils/ui_itils/color_utils.dart';

class EditProfileWidget extends StatelessWidget {
  final EditProfileController _editProfileController =
      Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: customWhiteColor,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(
              15,
            ))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Edit Profile",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: _editProfileController.nameController,
                    decoration: InputDecoration(labelText: "Name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Name cannot be blank or empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _editProfileController.emailController,
                    decoration: InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email cannot be blank or empty";
                      }
                      if (!value.isEmail) return "Enter a valid email";
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _editProfileController.phoneNumberController,
                    decoration: InputDecoration(labelText: "Phone number"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Phone number cannot be blank or empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _editProfileController.nationalityController,
                    decoration: InputDecoration(labelText: "Nationality"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Edit profile")))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
