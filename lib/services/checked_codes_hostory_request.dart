import 'package:http/http.dart' as http;
import 'package:safeport_admin/utils/local_data/local_storage.dart';
import 'package:safeport_admin/utils/network/custom_http_client.dart';
import 'package:safeport_admin/utils/network/endpoints.dart';

Future<http.Response> checkedCodesHistoryRequest() async {
  CustomHttpClient httpClient = CustomHttpClient();
  final token = await getAuthToken();
  return httpClient.customGetRequest(checkedCertificateHistoryPath,
      accessToken: token);
}
