import 'dart:convert';

import 'package:safeport_admin/models/user_info_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool?> getIsAuthenticated() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  return preferences.getBool("isAuthenticated");
}
Future deleteIsAuthenticated() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.remove("isAuthenticated");
}

Future<void> setIsAuthenticated(bool isAuth) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("isAuthenticated", isAuth);
}

Future<UserInformation> getAuthUserInformation() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return userInformationFromJson(
      preferences.getString("authUserInfo") as String);
}

Future<void> setAuthUserInformation(UserInformation userInformation) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("authUserInfo", json.encode(userInformation));
}

Future setAuthToken(String token) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("AuthToken", token);
}

Future<String?> getAuthToken() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getString("AuthToken");
}

Future deleteAuthToken() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.remove("AuthToken");
}

Future setUserCode(String userCode) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("userCode", userCode);
}

Future deleteUserCode() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.remove("userCode");
}

Future setUserEmail(String email) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("userEmail", email);
}

Future deleteUserEmail() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.remove("userEmail");
}
