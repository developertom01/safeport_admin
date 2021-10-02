import 'package:flutter/foundation.dart';

final String domain = !kReleaseMode
    ? "https://staging.panabios.org"
    : "https://trustedtesting.panabios.org";

final basePath = '$domain/api/external';
final loginUrl = '$basePath/obtain_access_token';
