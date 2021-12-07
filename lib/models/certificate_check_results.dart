// To parse this JSON data, do
//
//     final certificateCheckResult = certificateCheckResultFromJson(jsonString);

import 'dart:convert';

CertificateCheckResult certificateCheckResultFromJson(String str) =>
    CertificateCheckResult.fromJson(json.decode(str)["data"]);

String certificateCheckResultToJson(CertificateCheckResult data) =>
    json.encode(data.toJson());

class CertificateCheckResult {
  CertificateCheckResult({
    this.country,
    this.certificateId,
    this.checkedBy,
    this.result,
    this.externalTravellerIdtype,
    this.externalTravellerId,
    this.externalTravellerLastname,
    this.externalTravellerFirstname,
    this.externalTravellerOthername,
    this.laboratoryTestName,
    this.laboratoryTestType,
    this.laboratoryTestKit,
    this.laboratoryName,
    this.resultComment,
    this.laboratorySampleDatetime,
    this.laboratoryTestDatetime,
    this.dateUploaded,
  });

  final String? country;
  final String? certificateId;
  final String? checkedBy;
  final String? result;
  final String? externalTravellerIdtype;
  final String? externalTravellerId;
  final String? externalTravellerLastname;
  final String? externalTravellerFirstname;
  final String? externalTravellerOthername;
  final String? laboratoryTestName;
  final String? laboratoryTestType;
  final String? laboratoryTestKit;
  final String? laboratoryName;
  final String? resultComment;
  final DateTime? laboratorySampleDatetime;
  final DateTime? laboratoryTestDatetime;
  final DateTime? dateUploaded;

  factory CertificateCheckResult.fromJson(Map<String, dynamic> json) =>
      CertificateCheckResult(
        country: json["country"],
        certificateId: json["certificate_id"],
        checkedBy: json["checked_by"],
        result: json["result"],
        externalTravellerIdtype: json["external_traveller_idtype"],
        externalTravellerId: json["external_traveller_id"],
        externalTravellerLastname: json["external_traveller_lastname"],
        externalTravellerFirstname: json["external_traveller_firstname"],
        externalTravellerOthername: json["external_traveller_othername"],
        laboratoryTestName: json["laboratory_test_name"],
        laboratoryTestType: json["laboratory_test_type"],
        laboratoryTestKit: json["laboratory_test_kit"],
        laboratoryName: json["laboratory_name"],
        resultComment: json["result_comment"],
        laboratorySampleDatetime:json["laboratory_sample_datetime"]==""?null:DateTime.parse(json["laboratory_sample_datetime"]),
        laboratoryTestDatetime:json["laboratory_test_datetime"]==""?null:DateTime.parse(json["laboratory_test_datetime"]), 
            
        dateUploaded:json["date_uploaded"]==""?null: DateTime.parse(json["date_uploaded"])
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "certificate_id": certificateId,
        "checked_by": checkedBy,
        "result": result,
        "external_traveller_idtype": externalTravellerIdtype,
        "external_traveller_id": externalTravellerId,
        "external_traveller_lastname": externalTravellerLastname,
        "external_traveller_firstname": externalTravellerFirstname,
        "external_traveller_othername": externalTravellerOthername,
        "laboratory_test_name": laboratoryTestName,
        "laboratory_test_type": laboratoryTestType,
        "laboratory_test_kit": laboratoryTestKit,
        "laboratory_name": laboratoryName,
        "result_comment": resultComment,
        "laboratory_sample_datetime":
            laboratorySampleDatetime,
        "laboratory_test_datetime": laboratoryTestDatetime,
        "date_uploaded": dateUploaded
      };
}
