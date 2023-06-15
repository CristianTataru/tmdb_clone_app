import 'package:tmdb_clone_app/models/movie.dart';

class MoviesData {
  final List<Movie> movies;
  final int totalPages;

  const MoviesData(this.movies, this.totalPages);
}
