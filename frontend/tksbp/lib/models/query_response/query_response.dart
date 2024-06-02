// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_response.freezed.dart';

@freezed
class QueryResponse with _$QueryResponse {
  const factory QueryResponse.data({
    required String data,
  }) = _QueryResponseData;

  const factory QueryResponse.error({required String message}) =
      _QueryResponseError;
}
