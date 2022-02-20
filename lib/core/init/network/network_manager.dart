import 'dart:io';

import 'package:dio/dio.dart';
import 'network_model.dart';

abstract class INetworkManager {
  final String _baseUrl = '_baseUrl'; // Write your base url here.
  final String _path = ''; // provide a path to your base url.
  INetworkManager();

  late List<NetworkModel>? returnType;
  Future<List<NetworkModel>?> getreturnTypes();
}

class NetworkManager extends INetworkManager {
  @override
  Future<List<NetworkModel>?> getreturnTypes() async {
    final response = await Dio(BaseOptions(baseUrl: _baseUrl)).get(_path);
    if (response.statusCode == HttpStatus.ok) {
      
      returnType = NetworkResponseModel.fromJson(response.data).data!.toList();
      return returnType;
    }
    return [];
  }
}