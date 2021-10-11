import 'package:http/http.dart' as http;
import 'package:safeport_admin/utils/network/custom_http_client.dart';
import 'package:safeport_admin/utils/network/endpoints.dart';

Future<http.Response> getCertificateCountRequest(String token) {
  CustomHttpClient httpClient = CustomHttpClient();
  print(checkCertificateCountPath);
  return httpClient.customGetRequest(
    checkCertificateCountPath,
    accessToken: token,
  );
}
