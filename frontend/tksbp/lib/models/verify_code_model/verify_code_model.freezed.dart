// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyCodeModel _$VerifyCodeModelFromJson(Map<String, dynamic> json) {
  return _VerifyCodeModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyCodeModel {
  @JsonKey(name: 'unique_identifier')
  String get uniqueIdentifier =>
      throw _privateConstructorUsedError; //id приглашенного
  @JsonKey(name: 'verification_code')
  String get verificationCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyCodeModelCopyWith<VerifyCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCodeModelCopyWith<$Res> {
  factory $VerifyCodeModelCopyWith(
          VerifyCodeModel value, $Res Function(VerifyCodeModel) then) =
      _$VerifyCodeModelCopyWithImpl<$Res, VerifyCodeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unique_identifier') String uniqueIdentifier,
      @JsonKey(name: 'verification_code') String verificationCode});
}

/// @nodoc
class _$VerifyCodeModelCopyWithImpl<$Res, $Val extends VerifyCodeModel>
    implements $VerifyCodeModelCopyWith<$Res> {
  _$VerifyCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueIdentifier = null,
    Object? verificationCode = null,
  }) {
    return _then(_value.copyWith(
      uniqueIdentifier: null == uniqueIdentifier
          ? _value.uniqueIdentifier
          : uniqueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyCodeModelImplCopyWith<$Res>
    implements $VerifyCodeModelCopyWith<$Res> {
  factory _$$VerifyCodeModelImplCopyWith(_$VerifyCodeModelImpl value,
          $Res Function(_$VerifyCodeModelImpl) then) =
      __$$VerifyCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unique_identifier') String uniqueIdentifier,
      @JsonKey(name: 'verification_code') String verificationCode});
}

/// @nodoc
class __$$VerifyCodeModelImplCopyWithImpl<$Res>
    extends _$VerifyCodeModelCopyWithImpl<$Res, _$VerifyCodeModelImpl>
    implements _$$VerifyCodeModelImplCopyWith<$Res> {
  __$$VerifyCodeModelImplCopyWithImpl(
      _$VerifyCodeModelImpl _value, $Res Function(_$VerifyCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueIdentifier = null,
    Object? verificationCode = null,
  }) {
    return _then(_$VerifyCodeModelImpl(
      uniqueIdentifier: null == uniqueIdentifier
          ? _value.uniqueIdentifier
          : uniqueIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyCodeModelImpl implements _VerifyCodeModel {
  const _$VerifyCodeModelImpl(
      {@JsonKey(name: 'unique_identifier') required this.uniqueIdentifier,
      @JsonKey(name: 'verification_code') required this.verificationCode});

  factory _$VerifyCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyCodeModelImplFromJson(json);

  @override
  @JsonKey(name: 'unique_identifier')
  final String uniqueIdentifier;
//id приглашенного
  @override
  @JsonKey(name: 'verification_code')
  final String verificationCode;

  @override
  String toString() {
    return 'VerifyCodeModel(uniqueIdentifier: $uniqueIdentifier, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeModelImpl &&
            (identical(other.uniqueIdentifier, uniqueIdentifier) ||
                other.uniqueIdentifier == uniqueIdentifier) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uniqueIdentifier, verificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeModelImplCopyWith<_$VerifyCodeModelImpl> get copyWith =>
      __$$VerifyCodeModelImplCopyWithImpl<_$VerifyCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyCodeModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyCodeModel implements VerifyCodeModel {
  const factory _VerifyCodeModel(
      {@JsonKey(name: 'unique_identifier')
      required final String uniqueIdentifier,
      @JsonKey(name: 'verification_code')
      required final String verificationCode}) = _$VerifyCodeModelImpl;

  factory _VerifyCodeModel.fromJson(Map<String, dynamic> json) =
      _$VerifyCodeModelImpl.fromJson;

  @override
  @JsonKey(name: 'unique_identifier')
  String get uniqueIdentifier;
  @override //id приглашенного
  @JsonKey(name: 'verification_code')
  String get verificationCode;
  @override
  @JsonKey(ignore: true)
  _$$VerifyCodeModelImplCopyWith<_$VerifyCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
