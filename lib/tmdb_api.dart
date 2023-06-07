import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:tmdb_clone_app/models/api_response.dart';
import 'package:tmdb_clone_app/models/api_response_genres.dart';
import 'package:tmdb_clone_app/models/api_response_cast.dart';
import 'package:tmdb_clone_app/models/api_response_movie_video.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
part 'tmdb_api.g.dart';

@RestApi(baseUrl: 'https://api.themoviedb.org/3/')
abstract class TMDBApi {
  factory TMDBApi(Dio dio) = _TMDBApi;

  @GET('movie/popular?language=en-US&page={page}')
  Future<ApiResponse> getPopularMovies(@Path('page') int page);

  @GET('genre/movie/list?language=en')
  Future<ApiResponseGenres> getMovieGenres();

  @GET('trending/movie/day?language=en-US&page={page}')
  Future<ApiResponse> getTrendingMovies(@Path('page') int page);

  @GET('movie/{movieId}?language=en-US')
  Future<MovieDetails> getMovieDetails(@Path('movieId') int movieId);

  @GET('movie/{movieId}/credits?language=en-US')
  Future<ApiResponseCast> getMovieCast(@Path('movieId') int movieId);

  @GET("movie/{movieId}/videos?language=en-US")
  Future<ApiResponseMovieVideo> getMovieTrailers(@Path('movieId') int movieId);
}
