import 'package:simple_architecture_flutter/features/placeholder/models/placeholder_model.dart';


abstract class IPlaceHolderLocaleDataSource {
  Future<PlaceHolderModel> getTodosFromLocale();
  Future<void> deleteCache();
}
