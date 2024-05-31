// ignore_for_file: comment_references

import 'package:dio/dio.dart';

import '../../clients/tksbp_client.dart';
import '../../models/token_response/token_response.dart';
import '../../models/verify_code_model/verify_code_model.dart';
import '../../storage/token_storage/token_storage.dart';
import '../exceptions/service_exception.dart';
import 'exceptions/auth_service_exception.dart';

class AuthService {
  final Dio _client;
  final TokenStorage _storage;

  const AuthService(@TKSBPClient this._client, this._storage);

  ///
  /// ### Запрос на отправку кода подтверждения
  ///
  /// * Возвращает <b> [unique_identifier] </b>
  Future<String> getVerificationCode({required String phone}) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        'auth/generate-verification-code',
        data: {
          'phone_number': phone,
        },
      );

      return response.data!['unique_identifier'] as String;
    } on Exception catch (exception) {
      throw errorHandler(exception);
    }
  }

  /// ### Подтверждение кода и получение токенов
  ///
  /// * true - верификация прошла успешно
  /// * [AuthServiceException] - при ошибке
  ///
  Future<bool> verifyCode({required VerifyCodeModel verifyCodeModel}) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        'auth/verify-code',
        data: verifyCodeModel.toJson(),
      );

      final tokens = TokenResponse.fromJson(response.data!);

      await _storage.setAccessToken(tokens.accessToken);
      await _storage.setRefreshToken(tokens.refreshToken);

      return true;
    } on Exception catch (exception) {
      throw errorHandler(exception);
    }
  }

  /// ### Обновляет все токены
  ///
  /// * true - Токены успешно обновлены
  /// * [AuthServiceException] - при ошибке
  ///
  Future<bool> refreshToken() async {
    try {
      final token = await _storage.getRefreshToken();

      final response = await Dio().post<Map<String, dynamic>>(
        '${_client.options.baseUrl}auth/refresh',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      final tokens = TokenResponse.fromJson(response.data!);

      await _storage.setAccessToken(tokens.accessToken);
      await _storage.setRefreshToken(tokens.refreshToken);

      return true;
    } on Exception catch (exception) {
      throw errorHandler(exception);
    }
  }

  /// ### Удаляет все токены локально и с сервера
  ///
  /// * true - Токены успешно удалены
  /// * [AuthServiceException] - при ошибке
  ///
  Future<bool> logout() async {
    try {
      final refreshToken = await _storage.getRefreshToken();

      await _client.post<dynamic>(
        'auth/logout',
        data: {
          'refresh_token': refreshToken,
        },
      );

      await _storage.removeAccessToken();
      await _storage.removeRefreshToken();

      return true;
    } on Exception catch (exception) {
      throw errorHandler(exception);
    }
  }

  Exception errorHandler(Exception exception) {
    if (!(exception is DioException)) {
      return exception;
    }

    if (exception.type != DioExceptionType.badResponse) {
      return exception;
    }

    switch (exception.response?.statusCode) {
      case 400:
        {
          return AuthServiceException(
            'Некорректные данные',
            exception,
            type: ServiceExceptionType.incorrectCode,
          );
        }

      case 404:
        {
          return AuthServiceException(
            'Данные не найдены',
            exception,
            type: ServiceExceptionType.phoneNotFound,
          );
        }

      default:
        {
          return exception;
        }
    }
  }
}
