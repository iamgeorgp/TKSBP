import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../features/log/log.dart';
import 'log_interceptor.dart';

const TKSBPClient = Named('TKSBPClient');

Dio createTKSBPClient(Log logger) {
  final Dio client = Dio(
    BaseOptions(
      baseUrl: 'http://bibuyanov.ivanshilin.tech',
    ),
  )..interceptors.addAll([logInterceptor(logger)]);

  return client;
}
