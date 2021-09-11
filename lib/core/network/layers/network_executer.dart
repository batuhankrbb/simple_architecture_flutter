import 'package:dio/dio.dart';
import 'package:simple_architecture_flutter/core/custom_results/result_type.dart';
import 'package:simple_architecture_flutter/core/network/contracts/base_network_model.dart';
import 'package:simple_architecture_flutter/core/network/contracts/client_generator.dart';
import 'package:simple_architecture_flutter/core/network/error/network_error.dart';
import 'package:simple_architecture_flutter/core/network/layers/network_decoder.dart';
import 'package:simple_architecture_flutter/core/network/layers/network_requestor.dart';

import 'network_connectivity_checker.dart';

class NetworkExecuter {
  NetworkExecuter._privateConstructor();

  static var shared = NetworkExecuter._privateConstructor();

  var _debugMode = false;

  Future<Result<K,NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required ClientGenerator client,
      required T responseType,
      RequestOptions? options}) async {
        if(_debugMode) print(client);
    if (await NetworkConnectivityChecker.shared.status) {
      try {
        var response = await NetworkRequestor.shared.sendRequest(client: client);
        var decodedResponse =
            NetworkDecoder.shared.decode<T,K>(response: response, responseType: responseType);
        return Result.success(decodedResponse);
      }
      on DioError catch (dioError) {  //* NETWORK ERROR
        if(_debugMode) print("$client => ${NetworkError.request(error: dioError)}");
        return Result.failure(NetworkError.request(error: dioError));
      } 
      on TypeError catch (e) { //* DECODING ERROR
        if(_debugMode) print("$client => ${NetworkError.type(error: e.toString())}"); 
        return Result.failure(NetworkError.type(error: e.toString()));
      }
    } 
    else { //* INTERNET ERROR
     if(_debugMode) print(NetworkError.connectivity(message: 'No Internet Connection'));
      return Result.failure(NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }


}
