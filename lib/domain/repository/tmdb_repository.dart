import 'package:dio/dio.dart';
import 'package:tmdb_clone_app/domain/api/tmdb_api.dart';
import 'package:tmdb_clone_app/models/api_response.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
import 'package:tmdb_clone_app/models/movie_video.dart';
import 'package:tmdb_clone_app/models/movies_data.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/models/person_details.dart';

class TMDBRepository {
  final Dio dio = Dio(
    BaseOptions(
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxYmVmZjk2Y2U0YTgyNzEwODlkNzU4NGM2ZjYzMzg5NCIsInN1YiI6IjU5NTI1MGE5OTI1MTQxMmFjNzAyMjkzOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.IU7uc8yDqiKXH_uAr9sWzaDGe6lSxzBRQHE-Mp56bZQ',
        "accept": "application/json"
      },
    ),
  );

  late final TMDBApi tmdbApi = TMDBApi(dio);

  Future<MoviesData> getPaginatedPopularMovies(int page) async {
    ApiResponse response = await tmdbApi.getPopularMovies(page);
    List<Movie> movieList = response.results;
    List<MovieGenre> genreList = (await tmdbApi.getMovieGenres()).genres;
    List<Movie> listInUse = [];
    for (int i = 0; i < movieList.length; i++) {
      List<String> myList = [];
      for (int j = 0; j < genreList.length; j++) {
        if (movieList[i].genreIds.contains(genreList[j].id)) {
          myList.add(genreList[j].name);
        }
      }
      listInUse.add(movieList[i].copyWith(genres: myList));
    }
    return MoviesData(listInUse, response.totalPages);
  }

  Future<MoviesData> getPaginatedTrendingMovies(int page) async {
    ApiResponse response = await tmdbApi.getTrendingMovies(page);
    List<Movie> movieList = response.results;
    List<MovieGenre> genreList = (await tmdbApi.getMovieGenres()).genres;
    List<Movie> listInUse = [];
    for (int i = 0; i < movieList.length; i++) {
      List<String> myList = [];
      for (int j = 0; j < genreList.length; j++) {
        if (movieList[i].genreIds.contains(genreList[j].id)) {
          myList.add(genreList[j].name);
        }
      }
      listInUse.add(movieList[i].copyWith(genres: myList));
    }
    return MoviesData(listInUse, response.totalPages);
  }

  Future<PersonDetails> getPersonDetails(int personId) async {
    PersonDetails personDetails = await tmdbApi.getPersonDetails(personId);
    return personDetails;
  }

  Future<MovieDetails> getMovieDetails(int movieId) async {
    MovieDetails movieDetails = await tmdbApi.getMovieDetails(movieId);
    return movieDetails;
  }

  Future<List<Person>> getMovieCast(int movieId) async {
    List<Person> cast = (await tmdbApi.getMovieCast(movieId)).cast;
    return cast;
  }

  Future<List<MovieVideo>> getMovieTrailers(int movieId) async {
    List<MovieVideo> trailers = (await tmdbApi.getMovieTrailers(movieId)).results;
    return trailers;
  }

  Future<List<MovieGenre>> getMovieGenres() async {
    List<MovieGenre> movieGenres = (await tmdbApi.getMovieGenres()).genres;
    return movieGenres;
  }
}
