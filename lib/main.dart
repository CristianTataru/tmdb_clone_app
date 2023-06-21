import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_clone_app/domain/api/interceptors/append_headers_interceptor.dart';
import 'package:tmdb_clone_app/domain/api/interceptors/logging_interceptor.dart';
import 'package:tmdb_clone_app/domain/api/interceptors/mock_backend_interceptor.dart';
import 'package:tmdb_clone_app/domain/api/tmdb_api.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/routes/router.dart';

final router = AppRouter();
final dio = Dio()
  ..interceptors.addAll(
    [
      AppendHeadersInterceptor(),
      if (!kReleaseMode) LoggingInterceptor(),
      if (Platform.environment.containsKey('FLUTTER_TEST')) MockBackendInterceptor(),
    ],
  );

final tmdbApi = TMDBApi(dio);
final tmdbRepository = TMDBRepository(tmdbApi);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}
