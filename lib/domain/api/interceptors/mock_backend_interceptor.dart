import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class MockBackendInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (urlToMockDataPath.keys.contains(options.path)) {
      handler.resolve(
        Response(
          requestOptions: options,
          data: jsonDecode(await rootBundle.loadString(urlToMockDataPath[options.path]!)),
          statusCode: 200,
        ),
      );
      return;
    }
    handler.reject(
      DioError(
        requestOptions: options,
        message: "You haven't mocked this endpoint for the path ${options.path}",
      ),
    );
  }

  Map<String, String> urlToMockDataPath = {
    "movie/popular?language=en-US&page=1": "assets/json/get_popular_movies.json",
    "movie/popular?language=en-US&page=2": "assets/json/get_more_popular_movies.json",
    "trending/movie/day?language=en-US&page=1": "assets/json/get_trending_movies.json",
    "genre/movie/list?language=en": "assets/json/get_movie_genres.json",
    "movie/385687?language=en-US": "assets/json/get_movie_details.json",
    "movie/385687/credits?language=en-US": "assets/json/get_movie_cast.json",
    "movie/385687/videos?language=en-US": "assets/json/get_movie_trailers.json",
    "person/56446?language=en-US": "assets/json/get_person_details.json"
  };
}
