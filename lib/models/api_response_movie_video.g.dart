// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_movie_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponseMovieVideo _$$_ApiResponseMovieVideoFromJson(
        Map<String, dynamic> json) =>
    _$_ApiResponseMovieVideo(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiResponseMovieVideoToJson(
        _$_ApiResponseMovieVideo instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
