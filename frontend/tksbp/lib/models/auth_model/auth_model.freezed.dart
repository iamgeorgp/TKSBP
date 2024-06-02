// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() regular,
    required TResult Function() admin,
    required TResult Function() nonValid,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? regular,
    TResult? Function()? admin,
    TResult? Function()? nonValid,
    TResult? Function()? unauthorized,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? regular,
    TResult Function()? admin,
    TResult Function()? nonValid,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthModelRegular value) regular,
    required TResult Function(_AuthModelAdmin value) admin,
    required TResult Function(_AuthModelNonValid value) nonValid,
    required TResult Function(_AuthModelUnauthorized value) unauthorized,
    required TResult Function(_AuthModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthModelRegular value)? regular,
    TResult? Function(_AuthModelAdmin value)? admin,
    TResult? Function(_AuthModelNonValid value)? nonValid,
    TResult? Function(_AuthModelUnauthorized value)? unauthorized,
    TResult? Function(_AuthModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthModelRegular value)? regular,
    TResult Function(_AuthModelAdmin value)? admin,
    TResult Function(_AuthModelNonValid value)? nonValid,
    TResult Function(_AuthModelUnauthorized value)? unauthorized,
    TResult Function(_AuthModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthModelRegularImplCopyWith<$Res> {
  factory _$$AuthModelRegularImplCopyWith(_$AuthModelRegularImpl value,
          $Res Function(_$AuthModelRegularImpl) then) =
      __$$AuthModelRegularImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelRegularImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelRegularImpl>
    implements _$$AuthModelRegularImplCopyWith<$Res> {
  __$$AuthModelRegularImplCopyWithImpl(_$AuthModelRegularImpl _value,
      $Res Function(_$AuthModelRegularImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthModelRegularImpl implements _AuthModelRegular {
  const _$AuthModelRegularImpl();

  @override
  String toString() {
    return 'AuthModel.regular()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthModelRegularImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() regular,
    required TResult Function() admin,
    required TResult Function() nonValid,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
  }) {
    return regular();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? regular,
    TResult? Function()? admin,
    TResult? Function()? nonValid,
    TResult? Function()? unauthorized,
    TResult? Function(String message)? error,
  }) {
    return regular?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? regular,
    TResult Function()? admin,
    TResult Function()? nonValid,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthModelRegular value) regular,
    required TResult Function(_AuthModelAdmin value) admin,
    required TResult Function(_AuthModelNonValid value) nonValid,
    required TResult Function(_AuthModelUnauthorized value) unauthorized,
    required TResult Function(_AuthModelError value) error,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthModelRegular value)? regular,
    TResult? Function(_AuthModelAdmin value)? admin,
    TResult? Function(_AuthModelNonValid value)? nonValid,
    TResult? Function(_AuthModelUnauthorized value)? unauthorized,
    TResult? Function(_AuthModelError value)? error,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthModelRegular value)? regular,
    TResult Function(_AuthModelAdmin value)? admin,
    TResult Function(_AuthModelNonValid value)? nonValid,
    TResult Function(_AuthModelUnauthorized value)? unauthorized,
    TResult Function(_AuthModelError value)? error,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class _AuthModelRegular implements AuthModel {
  const factory _AuthModelRegular() = _$AuthModelRegularImpl;
}

/// @nodoc
abstract class _$$AuthModelAdminImplCopyWith<$Res> {
  factory _$$AuthModelAdminImplCopyWith(_$AuthModelAdminImpl value,
          $Res Function(_$AuthModelAdminImpl) then) =
      __$$AuthModelAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelAdminImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelAdminImpl>
    implements _$$AuthModelAdminImplCopyWith<$Res> {
  __$$AuthModelAdminImplCopyWithImpl(
      _$AuthModelAdminImpl _value, $Res Function(_$AuthModelAdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthModelAdminImpl implements _AuthModelAdmin {
  const _$AuthModelAdminImpl();

  @override
  String toString() {
    return 'AuthModel.admin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthModelAdminImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() regular,
    required TResult Function() admin,
    required TResult Function() nonValid,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
  }) {
    return admin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? regular,
    TResult? Function()? admin,
    TResult? Function()? nonValid,
    TResult? Function()? unauthorized,
    TResult? Function(String message)? error,
  }) {
    return admin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? regular,
    TResult Function()? admin,
    TResult Function()? nonValid,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthModelRegular value) regular,
    required TResult Function(_AuthModelAdmin value) admin,
    required TResult Function(_AuthModelNonValid value) nonValid,
    required TResult Function(_AuthModelUnauthorized value) unauthorized,
    required TResult Function(_AuthModelError value) error,
  }) {
    return admin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthModelRegular value)? regular,
    TResult? Function(_AuthModelAdmin value)? admin,
    TResult? Function(_AuthModelNonValid value)? nonValid,
    TResult? Function(_AuthModelUnauthorized value)? unauthorized,
    TResult? Function(_AuthModelError value)? error,
  }) {
    return admin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthModelRegular value)? regular,
    TResult Function(_AuthModelAdmin value)? admin,
    TResult Function(_AuthModelNonValid value)? nonValid,
    TResult Function(_AuthModelUnauthorized value)? unauthorized,
    TResult Function(_AuthModelError value)? error,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(this);
    }
    return orElse();
  }
}

abstract class _AuthModelAdmin implements AuthModel {
  const factory _AuthModelAdmin() = _$AuthModelAdminImpl;
}

/// @nodoc
abstract class _$$AuthModelNonValidImplCopyWith<$Res> {
  factory _$$AuthModelNonValidImplCopyWith(_$AuthModelNonValidImpl value,
          $Res Function(_$AuthModelNonValidImpl) then) =
      __$$AuthModelNonValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelNonValidImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelNonValidImpl>
    implements _$$AuthModelNonValidImplCopyWith<$Res> {
  __$$AuthModelNonValidImplCopyWithImpl(_$AuthModelNonValidImpl _value,
      $Res Function(_$AuthModelNonValidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthModelNonValidImpl implements _AuthModelNonValid {
  const _$AuthModelNonValidImpl();

  @override
  String toString() {
    return 'AuthModel.nonValid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthModelNonValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() regular,
    required TResult Function() admin,
    required TResult Function() nonValid,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
  }) {
    return nonValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? regular,
    TResult? Function()? admin,
    TResult? Function()? nonValid,
    TResult? Function()? unauthorized,
    TResult? Function(String message)? error,
  }) {
    return nonValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? regular,
    TResult Function()? admin,
    TResult Function()? nonValid,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (nonValid != null) {
      return nonValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthModelRegular value) regular,
    required TResult Function(_AuthModelAdmin value) admin,
    required TResult Function(_AuthModelNonValid value) nonValid,
    required TResult Function(_AuthModelUnauthorized value) unauthorized,
    required TResult Function(_AuthModelError value) error,
  }) {
    return nonValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthModelRegular value)? regular,
    TResult? Function(_AuthModelAdmin value)? admin,
    TResult? Function(_AuthModelNonValid value)? nonValid,
    TResult? Function(_AuthModelUnauthorized value)? unauthorized,
    TResult? Function(_AuthModelError value)? error,
  }) {
    return nonValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthModelRegular value)? regular,
    TResult Function(_AuthModelAdmin value)? admin,
    TResult Function(_AuthModelNonValid value)? nonValid,
    TResult Function(_AuthModelUnauthorized value)? unauthorized,
    TResult Function(_AuthModelError value)? error,
    required TResult orElse(),
  }) {
    if (nonValid != null) {
      return nonValid(this);
    }
    return orElse();
  }
}

abstract class _AuthModelNonValid implements AuthModel {
  const factory _AuthModelNonValid() = _$AuthModelNonValidImpl;
}

/// @nodoc
abstract class _$$AuthModelUnauthorizedImplCopyWith<$Res> {
  factory _$$AuthModelUnauthorizedImplCopyWith(
          _$AuthModelUnauthorizedImpl value,
          $Res Function(_$AuthModelUnauthorizedImpl) then) =
      __$$AuthModelUnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModelUnauthorizedImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelUnauthorizedImpl>
    implements _$$AuthModelUnauthorizedImplCopyWith<$Res> {
  __$$AuthModelUnauthorizedImplCopyWithImpl(_$AuthModelUnauthorizedImpl _value,
      $Res Function(_$AuthModelUnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthModelUnauthorizedImpl implements _AuthModelUnauthorized {
  const _$AuthModelUnauthorizedImpl();

  @override
  String toString() {
    return 'AuthModel.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelUnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() regular,
    required TResult Function() admin,
    required TResult Function() nonValid,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? regular,
    TResult? Function()? admin,
    TResult? Function()? nonValid,
    TResult? Function()? unauthorized,
    TResult? Function(String message)? error,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? regular,
    TResult Function()? admin,
    TResult Function()? nonValid,
    TResult Function()? unauthorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthModelRegular value) regular,
    required TResult Function(_AuthModelAdmin value) admin,
    required TResult Function(_AuthModelNonValid value) nonValid,
    required TResult Function(_AuthModelUnauthorized value) unauthorized,
    required TResult Function(_AuthModelError value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthModelRegular value)? regular,
    TResult? Function(_AuthModelAdmin value)? admin,
    TResult? Function(_AuthModelNonValid value)? nonValid,
    TResult? Function(_AuthModelUnauthorized value)? unauthorized,
    TResult? Function(_AuthModelError value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthModelRegular value)? regular,
    TResult Function(_AuthModelAdmin value)? admin,
    TResult Function(_AuthModelNonValid value)? nonValid,
    TResult Function(_AuthModelUnauthorized value)? unauthorized,
    TResult Function(_AuthModelError value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _AuthModelUnauthorized implements AuthModel {
  const factory _AuthModelUnauthorized() = _$AuthModelUnauthorizedImpl;
}

/// @nodoc
abstract class _$$AuthModelErrorImplCopyWith<$Res> {
  factory _$$AuthModelErrorImplCopyWith(_$AuthModelErrorImpl value,
          $Res Function(_$AuthModelErrorImpl) then) =
      __$$AuthModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthModelErrorImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelErrorImpl>
    implements _$$AuthModelErrorImplCopyWith<$Res> {
  __$$AuthModelErrorImplCopyWithImpl(
      _$AuthModelErrorImpl _value, $Res Function(_$AuthModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthModelErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthModelErrorImpl implements _AuthModelError {
  const _$AuthModelErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelErrorImplCopyWith<_$AuthModelErrorImpl> get copyWith =>
      __$$AuthModelErrorImplCopyWithImpl<_$AuthModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() regular,
    required TResult Function() admin,
    required TResult Function() nonValid,
    required TResult Function() unauthorized,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? regular,
    TResult? Function()? admin,
    TResult? Function()? nonValid,
    TResult? Function()? unauthorized,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? regular,
    TResult Function()? admin,
    TResult Function()? nonValid,
    TResult Function()? unauthorized,
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
    required TResult Function(_AuthModelRegular value) regular,
    required TResult Function(_AuthModelAdmin value) admin,
    required TResult Function(_AuthModelNonValid value) nonValid,
    required TResult Function(_AuthModelUnauthorized value) unauthorized,
    required TResult Function(_AuthModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthModelRegular value)? regular,
    TResult? Function(_AuthModelAdmin value)? admin,
    TResult? Function(_AuthModelNonValid value)? nonValid,
    TResult? Function(_AuthModelUnauthorized value)? unauthorized,
    TResult? Function(_AuthModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthModelRegular value)? regular,
    TResult Function(_AuthModelAdmin value)? admin,
    TResult Function(_AuthModelNonValid value)? nonValid,
    TResult Function(_AuthModelUnauthorized value)? unauthorized,
    TResult Function(_AuthModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthModelError implements AuthModel {
  const factory _AuthModelError({required final String message}) =
      _$AuthModelErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthModelErrorImplCopyWith<_$AuthModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
