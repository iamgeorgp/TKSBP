import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/tksbp_client.dart';

@singleton
class TKSBPService {
  final Dio _client;

  const TKSBPService(@TKSBPClient this._client);

  Future<String?> testSend() async {
    try {
      final response = await _client.post<String>(
        '',
        data: 'SELECT * FROM "TypeService"',
        options: Options(
          responseType: ResponseType.plain,
        ),
      );
      print(response.data);
      return response.data;
    } on DioException catch (_) {
      return null;
    }
  }

  Future<String?> executeQuery(String query) async {
    try {
      // final response = await _client.request<String>(
      //   '/v1/sql/custom',
      //   data: query,
      //   options: Options(method: 'POST'),
      // );
      final response = await _client.post<String>(
        '/v1/sql/custom',
        data: query,
        options: Options(
          responseType: ResponseType.plain,
        ),
      );
      return response.data;
    } on DioException catch (e) {
      return null;
    }
  }
}
