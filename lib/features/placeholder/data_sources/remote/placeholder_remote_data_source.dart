
import 'package:simple_architecture_flutter/core/network/layers/network_executer.dart';
import 'package:simple_architecture_flutter/core/network/response_types/response_types.dart';
import 'package:simple_architecture_flutter/features/placeholder/models/placeholder_model.dart';

import 'package:simple_architecture_flutter/core/network/clients/placeholder_client/json_placeholder_client.dart';

import 'i_placeholder_remote_data_source.dart';

class PlaceHolderRemoteDataSource implements IPlaceHolderRemoteDataSource {
  @override
  Future<PlaceHolderModel> getTodos() async { //* We don't return error here since we'll check it on the repository layer.
    var result = await NetworkExecuter.shared
        .execute<PlaceHolderModel, PlaceHolderModel>(
            client: JSONPlaceHolderClient.getTodos(),
            responseType: ResponseTypes.placeHolderModel);
    return result.when(success: (data) {
      return data;
    }, failure: (error) {
      //* You can check the error type if you want.
      throw error;
    });
  }

  @override
  Future<int> getCurrentUserNumber() {
    //TODO DO WORK
    throw UnimplementedError();
  }
}
