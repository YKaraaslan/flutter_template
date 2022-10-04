// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constant/urls.dart';
import 'rest_client.dart';

// flutter packages pub run build_runner build --delete-conflicting-outputs

class ApiRepository {
  RestClient? _restClient;
  static String _baseUrl = '';

  Future init() async {
    var dio = Dio();
    // var token =
    //     await SharedPrefHelper.getStringPrefFor(key: SharedPrefs.tokenType);
    // var accessToken =
    //     await SharedPrefHelper.getStringPrefFor(key: SharedPrefs.accessToken);
    // final serviceUrl =
    //     await SharedPrefHelper.getStringPrefFor(key: SharedPrefs.serviceUrl);
    // _baseUrl = serviceUrl.isNotEmpty ? serviceUrl : AppConstants.defaultBaseUrl;
    _baseUrl = Urls.defaultBaseUrl;
    dio.options = BaseOptions(validateStatus: (val) => true);
    // dio.options.headers['Authorization'] = '$token $accessToken';
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          request: true,
          requestHeader: false,
          requestBody: true,
          responseBody: false,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
    _restClient = RestClient(dio, baseUrl: '');
  }

  Future getAppSettings() async {
    try {
      await init();

      // return response;
    } catch (error) {
      debugPrint('getLoginToken error: $error');
    }
  }
}
