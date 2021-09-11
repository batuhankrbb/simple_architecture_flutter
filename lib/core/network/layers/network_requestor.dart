import 'dart:io';

import 'package:dio/dio.dart';
import 'package:simple_architecture_flutter/core/network/contracts/client_generator.dart';

class NetworkRequestor {
  NetworkRequestor._privateConstructor();

  static var shared = NetworkRequestor._privateConstructor();

  var _dioClient = Dio();

  Future<Response<dynamic>> sendRequest(
      {required ClientGenerator client, RequestOptions? options}) {
    var myOptions = options != null
        ? options
        : RequestOptions(path: client.path, data: client.body);
    return _dioClient.fetch(
      myOptions.copyWith(
        baseUrl: client.baseURL,
        method: client.method,
        path: client.path,
        queryParameters: client.queryParameters,
        sendTimeout: client.sendTimeout,
        receiveTimeout: client.receiveTimeOut,
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices),
      ),
    );
  }
}
