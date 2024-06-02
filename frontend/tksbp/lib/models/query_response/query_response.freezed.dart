// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueryResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryResponseData value) data,
    required TResult Function(_QueryResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryResponseData value)? data,
    TResult? Function(_QueryResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryResponseData value)? data,
    TResult Function(_QueryResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseCopyWith<$Res> {
  factory $QueryResponseCopyWith(
          QueryResponse value, $Res Function(QueryResponse) then) =
      _$QueryResponseCopyWithImpl<$Res, QueryResponse>;
}

/// @nodoc
class _$QueryResponseCopyWithImpl<$Res, $Val extends QueryResponse>
    implements $QueryResponseCopyWith<$Res> {
  _$QueryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QueryResponseDataImplCopyWith<$Res> {
  factory _$$QueryResponseDataImplCopyWith(_$QueryResponseDataImpl value,
          $Res Function(_$QueryResponseDataImpl) then) =
      __$$QueryResponseDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$QueryResponseDataImplCopyWithImpl<$Res>
    extends _$QueryResponseCopyWithImpl<$Res, _$QueryResponseDataImpl>
    implements _$$QueryResponseDataImplCopyWith<$Res> {
  __$$QueryResponseDataImplCopyWithImpl(_$QueryResponseDataImpl _value,
      $Res Function(_$QueryResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$QueryResponseDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryResponseDataImpl implements _QueryResponseData {
  const _$QueryResponseDataImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'QueryResponse.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryResponseDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryResponseDataImplCopyWith<_$QueryResponseDataImpl> get copyWith =>
      __$$QueryResponseDataImplCopyWithImpl<_$QueryResponseDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String message) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String message)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryResponseData value) data,
    required TResult Function(_QueryResponseError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryResponseData value)? data,
    TResult? Function(_QueryResponseError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryResponseData value)? data,
    TResult Function(_QueryResponseError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _QueryResponseData implements QueryResponse {
  const factory _QueryResponseData({required final String data}) =
      _$QueryResponseDataImpl;

  String get data;
  @JsonKey(ignore: true)
  _$$QueryResponseDataImplCopyWith<_$QueryResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryResponseErrorImplCopyWith<$Res> {
  factory _$$QueryResponseErrorImplCopyWith(_$QueryResponseErrorImpl value,
          $Res Function(_$QueryResponseErrorImpl) then) =
      __$$QueryResponseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QueryResponseErrorImplCopyWithImpl<$Res>
    extends _$QueryResponseCopyWithImpl<$Res, _$QueryResponseErrorImpl>
    implements _$$QueryResponseErrorImplCopyWith<$Res> {
  __$$QueryResponseErrorImplCopyWithImpl(_$QueryResponseErrorImpl _value,
      $Res Function(_$QueryResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$QueryResponseErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryResponseErrorImpl implements _QueryResponseError {
  const _$QueryResponseErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'QueryResponse.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryResponseErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryResponseErrorImplCopyWith<_$QueryResponseErrorImpl> get copyWith =>
      __$$QueryResponseErrorImplCopyWithImpl<_$QueryResponseErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? data,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryResponseData value) data,
    required TResult Function(_QueryResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryResponseData value)? data,
    TResult? Function(_QueryResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryResponseData value)? data,
    TResult Function(_QueryResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QueryResponseError implements QueryResponse {
  const factory _QueryResponseError({required final String message}) =
      _$QueryResponseErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$QueryResponseErrorImplCopyWith<_$QueryResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
