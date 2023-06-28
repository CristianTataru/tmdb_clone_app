import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tmdb_clone_app/domain/api/interceptors/append_headers_interceptor.dart';
import 'package:tmdb_clone_app/domain/api/interceptors/logging_interceptor.dart';
import 'package:tmdb_clone_app/domain/api/interceptors/mock_backend_interceptor.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio dio() => Dio()
    ..interceptors.addAll(
      [
        AppendHeadersInterceptor(),
        if (!kReleaseMode) LoggingInterceptor(),
        if (Platform.environment.containsKey('FLUTTER_TEST')) MockBackendInterceptor(),
      ],
    );
}
