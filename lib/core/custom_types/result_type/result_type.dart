import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_architecture_flutter/core/custom_types/custom_failure/custom_failure.dart';

part 'result_type.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _Success;
  const factory Result.failure(CustomFailure failure) = _Failure;
}