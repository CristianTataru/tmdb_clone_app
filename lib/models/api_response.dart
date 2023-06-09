import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/movie.dart';
part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required int page,
    required List<Movie> results,
    @JsonKey(name: "total_pages") required int totalPages,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, Object?> json) => _$ApiResponseFromJson(json);
}
