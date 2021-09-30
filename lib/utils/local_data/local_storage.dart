import 'package:shared_preferences/shared_preferences.dart';

Future<bool?> getIsAuthenticated() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  return preferences.getBool("isAuthenticated");
}
