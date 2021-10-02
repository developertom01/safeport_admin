import 'package:http/http.dart' as http;
import 'package:safeport_admin/utils/network/custom_http_client.dart';
import 'package:safeport_admin/utils/network/endpoints.dart';

Future<http.Response> loginRequest(Map<String, String> data) {
  CustomHttpClient client = CustomHttpClient();
  return client.customPostRequest(loginUrl, data: data);
}
