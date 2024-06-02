// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<dynamic>> table) table,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<dynamic>> table)? table,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<dynamic>> table)? table,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TableModelTabel value) table,
    required TResult Function(_TableModelLoading value) loading,
    required TResult Function(_TableModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TableModelTabel value)? table,
    TResult? Function(_TableModelLoading value)? loading,
    TResult? Function(_TableModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TableModelTabel value)? table,
    TResult Function(_TableModelLoading value)? loading,
    TResult Function(_TableModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TableModelTabelImplCopyWith<$Res> {
  factory _$$TableModelTabelImplCopyWith(_$TableModelTabelImpl value,
          $Res Function(_$TableModelTabelImpl) then) =
      __$$TableModelTabelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<dynamic>> table});
}

/// @nodoc
class __$$TableModelTabelImplCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$TableModelTabelImpl>
    implements _$$TableModelTabelImplCopyWith<$Res> {
  __$$TableModelTabelImplCopyWithImpl(
      _$TableModelTabelImpl _value, $Res Function(_$TableModelTabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? table = null,
  }) {
    return _then(_$TableModelTabelImpl(
      table: null == table
          ? _value._table
          : table // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ));
  }
}

/// @nodoc

class _$TableModelTabelImpl implements _TableModelTabel {
  const _$TableModelTabelImpl({required final List<List<dynamic>> table})
      : _table = table;

  final List<List<dynamic>> _table;
  @override
  List<List<dynamic>> get table {
    if (_table is EqualUnmodifiableListView) return _table;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_table);
  }

  @override
  String toString() {
    return 'TableModel.table(table: $table)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableModelTabelImpl &&
            const DeepCollectionEquality().equals(other._table, _table));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_table));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableModelTabelImplCopyWith<_$TableModelTabelImpl> get copyWith =>
      __$$TableModelTabelImplCopyWithImpl<_$TableModelTabelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<dynamic>> table) table,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return table(this.table);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<dynamic>> table)? table,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return table?.call(this.table);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<dynamic>> table)? table,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (table != null) {
      return table(this.table);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TableModelTabel value) table,
    required TResult Function(_TableModelLoading value) loading,
    required TResult Function(_TableModelError value) error,
  }) {
    return table(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TableModelTabel value)? table,
    TResult? Function(_TableModelLoading value)? loading,
    TResult? Function(_TableModelError value)? error,
  }) {
    return table?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TableModelTabel value)? table,
    TResult Function(_TableModelLoading value)? loading,
    TResult Function(_TableModelError value)? error,
    required TResult orElse(),
  }) {
    if (table != null) {
      return table(this);
    }
    return orElse();
  }
}

abstract class _TableModelTabel implements TableModel {
  const factory _TableModelTabel({required final List<List<dynamic>> table}) =
      _$TableModelTabelImpl;

  List<List<dynamic>> get table;
  @JsonKey(ignore: true)
  _$$TableModelTabelImplCopyWith<_$TableModelTabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TableModelLoadingImplCopyWith<$Res> {
  factory _$$TableModelLoadingImplCopyWith(_$TableModelLoadingImpl value,
          $Res Function(_$TableModelLoadingImpl) then) =
      __$$TableModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TableModelLoadingImplCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$TableModelLoadingImpl>
    implements _$$TableModelLoadingImplCopyWith<$Res> {
  __$$TableModelLoadingImplCopyWithImpl(_$TableModelLoadingImpl _value,
      $Res Function(_$TableModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TableModelLoadingImpl implements _TableModelLoading {
  const _$TableModelLoadingImpl();

  @override
  String toString() {
    return 'TableModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TableModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<dynamic>> table) table,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<dynamic>> table)? table,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<dynamic>> table)? table,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TableModelTabel value) table,
    required TResult Function(_TableModelLoading value) loading,
    required TResult Function(_TableModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TableModelTabel value)? table,
    TResult? Function(_TableModelLoading value)? loading,
    TResult? Function(_TableModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TableModelTabel value)? table,
    TResult Function(_TableModelLoading value)? loading,
    TResult Function(_TableModelError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TableModelLoading implements TableModel {
  const factory _TableModelLoading() = _$TableModelLoadingImpl;
}

/// @nodoc
abstract class _$$TableModelErrorImplCopyWith<$Res> {
  factory _$$TableModelErrorImplCopyWith(_$TableModelErrorImpl value,
          $Res Function(_$TableModelErrorImpl) then) =
      __$$TableModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TableModelErrorImplCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$TableModelErrorImpl>
    implements _$$TableModelErrorImplCopyWith<$Res> {
  __$$TableModelErrorImplCopyWithImpl(
      _$TableModelErrorImpl _value, $Res Function(_$TableModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TableModelErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TableModelErrorImpl implements _TableModelError {
  const _$TableModelErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TableModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableModelErrorImplCopyWith<_$TableModelErrorImpl> get copyWith =>
      __$$TableModelErrorImplCopyWithImpl<_$TableModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<dynamic>> table) table,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<dynamic>> table)? table,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<dynamic>> table)? table,
    TResult Function()? loading,
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
    required TResult Function(_TableModelTabel value) table,
    required TResult Function(_TableModelLoading value) loading,
    required TResult Function(_TableModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TableModelTabel value)? table,
    TResult? Function(_TableModelLoading value)? loading,
    TResult? Function(_TableModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TableModelTabel value)? table,
    TResult Function(_TableModelLoading value)? loading,
    TResult Function(_TableModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TableModelError implements TableModel {
  const factory _TableModelError({required final String message}) =
      _$TableModelErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TableModelErrorImplCopyWith<_$TableModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
