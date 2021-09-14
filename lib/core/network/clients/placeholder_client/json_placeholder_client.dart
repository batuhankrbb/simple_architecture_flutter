import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_architecture_flutter/core/network/contracts/client_generator.dart';

part 'json_placeholder_client.freezed.dart';

@freezed
class JSONPlaceHolderClient extends ClientGenerator
    with _$JSONPlaceHolderClient {
  const JSONPlaceHolderClient._() : super();

  const factory JSONPlaceHolderClient.getTodos() = _GetTodos;

  @override
  String get baseURL => "https://jsonplaceholder.typicode.com";

  @override
  get body => null;

  @override
  Map<String, dynamic> get header => {};

  @override
  String get method => "GET";

  @override
  String get path {
    return this.when(
      getTodos: () => "/todos/1",
    );
  }

  @override
  Map<String, dynamic>? get queryParameters => null;
}



