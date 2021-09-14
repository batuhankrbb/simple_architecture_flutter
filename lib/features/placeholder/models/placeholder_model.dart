import 'package:simple_architecture_flutter/core/network/contracts/base_network_model.dart';

class PlaceHolderModel implements BaseNetworkModel {
  PlaceHolderModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  fromJson(Map<String, dynamic> json) {
    return PlaceHolderModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      completed: json["completed"],
    );
  }
}
