// To parse this JSON data, do
//
//     final userProfile = userProfileFromJson(jsonString);

import 'dart:convert';

UserProfile userProfileFromJson(String str) =>
    UserProfile.fromJson(json.decode(str)["data"]);

String userProfileToJson(UserProfile data) => json.encode(data.toJson());

class UserProfile {
  UserProfile({
    required this.user,
    required this.port,
  });

  User user;
  Port port;

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
        user: User.fromJson(json["user"]),
        port: Port.fromJson(json["port"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "port": port.toJson(),
      };
}

class Port {
  Port({
    required this.name,
    required this.country,
    required this.email,
    required this.region,
    required this.zipcode,
    required this.address1,
    required this.address2,
    required this.phoneNumber,
  });

  String name;
  String country;
  String email;
  String region;
  String zipcode;
  String address1;
  String address2;
  String phoneNumber;

  factory Port.fromJson(Map<String, dynamic> json) => Port(
        name: json["name"],
        country: json["country"],
        email: json["email"],
        region: json["region"],
        zipcode: json["zipcode"],
        address1: json["address1"],
        address2: json["address2"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "country": country,
        "email": email,
        "region": region,
        "zipcode": zipcode,
        "address1": address1,
        "address2": address2,
        "phone_number": phoneNumber,
      };
}

class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.userCode,
    required this.userGroup,
    required this.phoneNumber,
  });

  String firstName;
  String lastName;
  String email;
  String userCode;
  String userGroup;
  String phoneNumber;

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        userCode: json["user_code"],
        userGroup: json["user_group"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "user_code": userCode,
        "user_group": userGroup,
        "phone_number": phoneNumber,
      };
}
