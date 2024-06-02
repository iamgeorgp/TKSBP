// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel.regular() = _AuthModelRegular;

  const factory AuthModel.admin() = _AuthModelAdmin;

  const factory AuthModel.nonValid() = _AuthModelNonValid;

  const factory AuthModel.unauthorized() = _AuthModelUnauthorized;

  const factory AuthModel.error({required String message}) = _AuthModelError;
}
