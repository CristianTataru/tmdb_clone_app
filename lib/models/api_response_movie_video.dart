import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/movie_video.dart';

part 'api_response_movie_video.freezed.dart';
part 'api_response_movie_video.g.dart';

@freezed
class ApiResponseMovieVideo with _$ApiResponseMovieVideo {
  const factory ApiResponseMovieVideo({
    required List<MovieVideo> results,
  }) = _ApiResponseMovieVideo;

  factory ApiResponseMovieVideo.fromJson(Map<String, Object?> json) => _$ApiResponseMovieVideoFromJson(json);
}
