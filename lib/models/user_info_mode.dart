// To parse this JSON data, do
//
//     final userInformation = userInformationFromJson(jsonString);

import 'dart:convert';

UserInformation userInformationFromJson(String str) =>
    UserInformation.fromJson(json.decode(str));

String userInformationToJson(UserInformation data) =>
    json.encode(data.toJson());

class UserInformation {
  UserInformation({
    required this.token,
    required this.userCode,
    required this.email,
  });

  final String token;
  final String userCode;
  final String email;

  factory UserInformation.fromJson(Map<String, dynamic> json) =>
      UserInformation(
        token: json["token"],
        userCode: json["user_code"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "user_code": userCode,
        "email": email,
      };
}
