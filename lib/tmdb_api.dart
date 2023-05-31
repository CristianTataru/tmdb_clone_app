import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:tmdb_clone_app/models/api_response.dart';
import 'package:tmdb_clone_app/models/api_response_genres.dart';
part 'tmdb_api.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class TMDBApi {
  factory TMDBApi(Dio dio) = _TMDBApi;

  @GET('movie/popular?language=en-US&page={page}')
  Future<ApiResponse> getPopularMovies(@Path('page') int page);

  @GET('genre/movie/list?language=en')
  Future<ApiResponseGenres> getMovieGenres();
}
