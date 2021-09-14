import 'package:simple_architecture_flutter/features/placeholder/models/placeholder_model.dart';


abstract class IPlaceHolderRemoteDataSource {
  Future<PlaceHolderModel> getTodos();
  Future<int> getCurrentUserNumber();
}
