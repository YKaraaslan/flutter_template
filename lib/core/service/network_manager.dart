import 'dart:io';

import 'package:dio/dio.dart';

import '../models/sample_model.dart';

// Simple Network Manager
abstract class INetworkManager {
  final String _path = '';
  INetworkManager();

  late List<SampleCatModel> returnType;
  Future<List<SampleCatModel>?> getCats();
}

class NetworkManager extends INetworkManager {
  final dio = Dio(BaseOptions(baseUrl: ''));

  Future<dynamic> _getDioRequest() async {
    final response = await dio.get(_path);

    if (response.statusCode == HttpStatus.ok) {
      return response.data;
    }
  }

  @override
  Future<List<SampleCatModel>?> getCats() async {
    final response = await _getDioRequest();
    returnType = [];
    if (response is List) {
      return response.map((e) => SampleCatModel.fromJson(e)).toList();
    } else {
      throw response;
    }
  }
}
