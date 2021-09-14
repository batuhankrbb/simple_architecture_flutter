// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'json_placeholder_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JSONPlaceHolderClientTearOff {
  const _$JSONPlaceHolderClientTearOff();

  _GetTodos getTodos() {
    return const _GetTodos();
  }
}

/// @nodoc
const $JSONPlaceHolderClient = _$JSONPlaceHolderClientTearOff();

/// @nodoc
mixin _$JSONPlaceHolderClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JSONPlaceHolderClientCopyWith<$Res> {
  factory $JSONPlaceHolderClientCopyWith(JSONPlaceHolderClient value,
          $Res Function(JSONPlaceHolderClient) then) =
      _$JSONPlaceHolderClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$JSONPlaceHolderClientCopyWithImpl<$Res>
    implements $JSONPlaceHolderClientCopyWith<$Res> {
  _$JSONPlaceHolderClientCopyWithImpl(this._value, this._then);

  final JSONPlaceHolderClient _value;
  // ignore: unused_field
  final $Res Function(JSONPlaceHolderClient) _then;
}

/// @nodoc
abstract class _$GetTodosCopyWith<$Res> {
  factory _$GetTodosCopyWith(_GetTodos value, $Res Function(_GetTodos) then) =
      __$GetTodosCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetTodosCopyWithImpl<$Res>
    extends _$JSONPlaceHolderClientCopyWithImpl<$Res>
    implements _$GetTodosCopyWith<$Res> {
  __$GetTodosCopyWithImpl(_GetTodos _value, $Res Function(_GetTodos) _then)
      : super(_value, (v) => _then(v as _GetTodos));

  @override
  _GetTodos get _value => super._value as _GetTodos;
}

/// @nodoc

class _$_GetTodos extends _GetTodos {
  const _$_GetTodos() : super._();

  @override
  String toString() {
    return 'JSONPlaceHolderClient.getTodos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetTodos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTodos,
  }) {
    return getTodos();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTodos,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodos value) getTodos,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodos value)? getTodos,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class _GetTodos extends JSONPlaceHolderClient {
  const factory _GetTodos() = _$_GetTodos;
  const _GetTodos._() : super._();
}
