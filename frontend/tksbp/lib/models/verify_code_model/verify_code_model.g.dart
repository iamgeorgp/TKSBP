// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyCodeModelImpl _$$VerifyCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyCodeModelImpl(
      uniqueIdentifier: json['unique_identifier'] as String,
      verificationCode: json['verification_code'] as String,
    );

Map<String, dynamic> _$$VerifyCodeModelImplToJson(
        _$VerifyCodeModelImpl instance) =>
    <String, dynamic>{
      'unique_identifier': instance.uniqueIdentifier,
      'verification_code': instance.verificationCode,
    };
