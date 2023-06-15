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
  TMDBRepository(this.tmdbApi);

  final TMDBApi tmdbApi;
  List<MovieGenre> genreList = [];

  Future<List<Movie>> addMovieGenres(List<Movie> movieList) async {
    if (genreList.isEmpty) {
      genreList = (await tmdbApi.getMovieGenres()).genres;
    }
    List<Movie> finalMovieList = [];
    for (int i = 0; i < movieList.length; i++) {
      List<String> myList = [];
      for (int j = 0; j < genreList.length; j++) {
        if (movieList[i].genreIds.contains(genreList[j].id)) {
          myList.add(genreList[j].name);
        }
      }
      finalMovieList.add(movieList[i].copyWith(genres: myList));
    }
    return finalMovieList;
  }

  Future<MoviesData> getPaginatedPopularMovies(int page) async {
    ApiResponse response = await tmdbApi.getPopularMovies(page);
    return MoviesData(await addMovieGenres(response.results), response.totalPages);
  }

  Future<MoviesData> getPaginatedTrendingMovies(int page) async {
    ApiResponse response = await tmdbApi.getTrendingMovies(page);
    return MoviesData(await addMovieGenres(response.results), response.totalPages);
  }

  Future<PersonDetails> getPersonDetails(int personId) => tmdbApi.getPersonDetails(personId);

  Future<MovieDetails> getMovieDetails(int movieId) => tmdbApi.getMovieDetails(movieId);

  Future<List<Person>> getMovieCast(int movieId) async => (await tmdbApi.getMovieCast(movieId)).cast;

  Future<List<MovieVideo>> getMovieTrailers(int movieId) async => (await tmdbApi.getMovieTrailers(movieId)).results;

  Future<List<MovieGenre>> getMovieGenres() async => (await tmdbApi.getMovieGenres()).genres;
}
