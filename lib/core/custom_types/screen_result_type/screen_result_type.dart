import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_architecture_flutter/core/custom_types/custom_failure.dart';

part 'screen_result_type.freezed.dart';

@freezed
class ScreenResult<T> with _$ScreenResult<T> {
  const factory ScreenResult.completed(T data) = _Completed<T>;
  const factory ScreenResult.failed(CustomFailure failure) = _Failed;
  const factory ScreenResult.loading() = _Loading;
  const factory ScreenResult.initial() = _Initial;
}
