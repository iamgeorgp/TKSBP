// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_model.freezed.dart';

part 'verify_code_model.g.dart';

@freezed
class VerifyCodeModel with _$VerifyCodeModel {
  const factory VerifyCodeModel({
    @JsonKey(
      name: 'unique_identifier',
    )
    required String uniqueIdentifier,
    //id приглашенного
    @JsonKey(
      name: 'verification_code',
    )
    required String verificationCode,
  }) = _VerifyCodeModel;

  factory VerifyCodeModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeModelFromJson(json);
}
