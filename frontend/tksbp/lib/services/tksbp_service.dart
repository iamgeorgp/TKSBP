import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../clients/tksbp_client.dart';
import '../models/query_response/query_response.dart';

@singleton
class TKSBPService {
  final Dio _client;

  const TKSBPService(@TKSBPClient this._client);

  Future<QueryResponse> executeQuery(String query) async {
    try {
      final response = await _client.post<String>(
        '/v1/sql/custom',
        data: query,
        options: Options(
          responseType: ResponseType.plain,
        ),
      );
      return QueryResponse.data(data: response.data!);
    } on DioException catch (e) {
      return QueryResponse.error(
          message: e.response?.data.toString() ?? 'Упс, произошла ошибка(');
    }
  }
}
