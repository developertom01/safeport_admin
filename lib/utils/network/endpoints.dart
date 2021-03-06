import 'package:flutter/foundation.dart';

final String domain = !kReleaseMode
    ? "https://trustedtravel.panabios.org"
    : "https://trustedtravel.panabios.org";

final basePath = '$domain/api/external';

final loginUrl = '$basePath/obtain_access_token/';
final String checkCertificateCountPath = '$basePath/biomars/checks/count/';
final String checkCertificatePath = '$basePath/check/biomars/certificate/';
final String checkedCertificateHistoryPath = '$basePath/biomars/check/history/';
final String userProfilePath = '$basePath/biomars/user/profile/';
