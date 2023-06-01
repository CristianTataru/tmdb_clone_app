import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    @JsonKey(name: 'poster_path') required String posterPath,
    @Default([]) @JsonKey(includeFromJson: false, defaultValue: []) List<String> genres,
    @JsonKey(name: "vote_average") required double rating,
    @JsonKey(name: "vote_count") required int voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
