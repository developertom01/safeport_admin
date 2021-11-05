import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:safeport_admin/models/error.dart';
import 'package:safeport_admin/utils/logout.dart';
import 'package:safeport_admin/utils/ui_itils/custom_notifications.dart';

void interceptError(http.Response response) {
  print(response.body);
  print(response.statusCode);
  if (response.statusCode == 400) {
    showErrorNotification("An error occured");
  } else if (response.statusCode == 401) {
    showErrorToast("Session expired");
    logout();
  } else if (response.statusCode > 401 && response.statusCode <= 404) {
    ErrorMessage errorMessage =
        ErrorMessage.fromJson(json.decode(response.body));
    showErrorNotification(errorMessage.message);
  } else {
    showErrorNotification("Unexpected error occured from server");
  }
}
