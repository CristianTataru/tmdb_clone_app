import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
part 'api_response_genres.freezed.dart';
part 'api_response_genres.g.dart';

@freezed
class ApiResponseGenres with _$ApiResponseGenres {
  const factory ApiResponseGenres({
    required List<MovieGenre> genres,
  }) = _ApiResponseGenres;

  factory ApiResponseGenres.fromJson(Map<String, Object?> json) => _$ApiResponseGenresFromJson(json);
}
