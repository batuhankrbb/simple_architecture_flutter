import 'package:simple_architecture_flutter/core/custom_types/custom_failure/custom_failure.dart';
import 'package:simple_architecture_flutter/core/custom_types/result_type/result_type.dart';
import 'package:simple_architecture_flutter/features/placeholder/models/placeholder_model.dart';


abstract class IPlaceHolderRepository {
  Future<Result<PlaceHolderModel>> getTodos();
}
