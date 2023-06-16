import 'package:dio/dio.dart';
import 'dart:developer' as developer;

void logRequest(String msg) {
  developer.log('\x1B[32m$msg\x1B[0m');
}

void logResponse(String msg) {
  developer.log('\x1B[33m$msg\x1B[0m');
}

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logRequest(
        'REQUEST[${options.method}] => PATH: ${options.path};\nHEADERS: ${options.headers};\nDATE&TIME(REQUEST): ${DateTime.now()}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logResponse(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path};\nHEADERS: ${response.requestOptions.headers};\nBODY: ${response.data};\nDATE&TIME(RESPONSE): ${DateTime.now()}');
    handler.next(response);
  }
}
