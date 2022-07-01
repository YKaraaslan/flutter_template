import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/constant/urls.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: '')
abstract class RestClient {
  factory RestClient(Dio dio, {@required String baseUrl}) = _RestClient;

  @GET(Urls.sampleApi)
  Future getSampleApi(
    @Path() String samplePath,
  );
}
