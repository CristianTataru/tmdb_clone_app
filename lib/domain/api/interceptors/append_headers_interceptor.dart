import 'package:dio/dio.dart';

class AppendHeadersInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxYmVmZjk2Y2U0YTgyNzEwODlkNzU4NGM2ZjYzMzg5NCIsInN1YiI6IjU5NTI1MGE5OTI1MTQxMmFjNzAyMjkzOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.IU7uc8yDqiKXH_uAr9sWzaDGe6lSxzBRQHE-Mp56bZQ',
        "accept": "application/json"
      },
    );
    handler.next(options);
  }
}
