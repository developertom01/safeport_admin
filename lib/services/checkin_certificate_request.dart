import 'package:http/http.dart' as http;
import 'package:safeport_admin/utils/local_data/local_storage.dart';
import 'package:safeport_admin/utils/network/custom_http_client.dart';
import 'package:safeport_admin/utils/network/endpoints.dart';

Future<http.Response> checkCertificateRequest(Map<String, dynamic> data) async {
  CustomHttpClient httpClient = CustomHttpClient();
  final token = await getAuthToken();
  return httpClient.customPostRequest(checkCertificatePath,
      data: data, accessToken: token);
}
