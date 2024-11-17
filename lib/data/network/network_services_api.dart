// ignore_for_file: constant_pattern_never_matches_value_type

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:freezed_practise/data/exceptions/app_exceptions.dart';
import 'package:freezed_practise/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;
    if (kDebugMode) {
      print(url);
      print(data);
    }
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> putApi(String url, var data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .put(
            Uri.parse(url),
            body: data,
          )
          .timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .delete(Uri.parse(url))
          .timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
    } on SocketException {
      throw NoInternetException();
    } on TimeoutException {
      throw RequestTimeOutException();
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;

      case 401:
        throw UnAuthorizedException();

      case 500:
        throw FetchDataException(
            'Error communication with server${response.statusCode.toString()}');
      default:
        throw UnAuthorizedException();
    }
  }
}
