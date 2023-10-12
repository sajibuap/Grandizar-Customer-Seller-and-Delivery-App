import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.ecommercexd.com',
    headers: {
      "X-XSRF-TOKEN": "null",
      'Content-Type': 'application/json-patch+json',
      'Accept': 'text/plain',
    },
  ));
  dio.interceptors.add(
    TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestData: true,
        printResponseData: true,
        printRequestHeaders: true,
        printResponseMessage: true,
      ),
    ),
  );
  return dio;
});
