import 'package:simple_architecture_flutter/core/custom_types/custom_failure/custom_failure.dart';
import 'package:simple_architecture_flutter/core/custom_types/result_type/result_type.dart';
import 'package:simple_architecture_flutter/features/placeholder/data_sources/locale/i_placeholder_locale_data_source.dart';
import 'package:simple_architecture_flutter/features/placeholder/data_sources/remote/i_placeholder_remote_data_source.dart';
import 'package:simple_architecture_flutter/features/placeholder/models/placeholder_model.dart';

import 'i_placeholder_repository.dart';

class PlaceHolderRepository implements IPlaceHolderRepository {
  IPlaceHolderRemoteDataSource remoteDataSource;
  IPlaceHolderLocaleDataSource localeDataSource;
  PlaceHolderRepository({
    required this.remoteDataSource,
    required this.localeDataSource,
  });

  @override
  Future<Result<PlaceHolderModel>> getTodos() async {
    try {
      var todos = await remoteDataSource.getTodos();
      return Result.success(todos);
    } catch (e) {
      return Result.failure(CustomFailure(messsage: "Something went wrong while getting todos :("));
    }
  }
}
