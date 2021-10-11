import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CustomHttpClient {
  final http.Client _client = http.Client();
  final Map<String, String> _headers = {"Content-Type": "application/json"};

  Future<http.Response> customGetRequest(String url,
      {String? accessToken}) async {
    if (accessToken != null) {
      print(accessToken);
      _headers["Authorization"] = 'token $accessToken';
    }
    return _client.get(Uri.parse(url), headers: _headers);
  }

  Future<http.Response> customPostRequest(String url,
      {@required Map<String, dynamic>? data, String? accessToken}) async {
    if (accessToken != null) {
      _headers["Authorization"] = 'token $accessToken';
    }
    final body = json.encode(data);
    return _client.post(Uri.parse(url), body: body, headers: _headers);
  }

  Future<http.Response> customPutRequest(String url,
      {@required Map<String, dynamic>? data, String? accessToken}) async {
    if (accessToken != null) {
      _headers["Authorization"] = 'token $accessToken';
    }
    final body = json.encode(data);
    return _client.put(Uri.parse(url), body: body, headers: _headers);
  }

  Future<http.Response> customPatchRequest(String url,
      {@required Map<String, dynamic>? data, String? accessToken}) async {
    if (accessToken != null) {
      _headers["Authorization"] = 'token $accessToken';
    }
    final body = json.encode(data);
    return _client.patch(Uri.parse(url), body: body, headers: _headers);
  }

  Future<http.Response> customDeleteRequest(String url,
      {String? accessToken}) async {
    if (accessToken != null) {
      _headers["Authorization"] = 'token $accessToken';
    }
    return _client.delete(Uri.parse(url), headers: _headers);
  }
}
