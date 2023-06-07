import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_video.freezed.dart';
part 'movie_video.g.dart';

@freezed
class MovieVideo with _$MovieVideo {
  const factory MovieVideo({
    required String key,
    required String site,
  }) = _MovieVideo;

  factory MovieVideo.fromJson(Map<String, Object?> json) => _$MovieVideoFromJson(json);
}
