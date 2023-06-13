import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/collection.dart';
import 'package:tmdb_clone_app/models/production_company.dart';
import 'package:tmdb_clone_app/models/spoken_language.dart';
part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    @JsonKey(name: 'backdrop_path') required String backgroundPosterPath,
    @JsonKey(name: 'belongs_to_collection') required Collection? collection,
    required int budget,
    required String overview,
    @JsonKey(name: "production_companies") required List<ProductionCompany> productionCompanies,
    @JsonKey(name: "release_date") required String releaseDate,
    required int revenue,
    @JsonKey(name: "spoken_languages") required List<SpokenLanguage> spokenLanguages,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "vote_count") required int voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, Object?> json) => _$MovieDetailsFromJson(json);
}
