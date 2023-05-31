// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_genres.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponseGenres _$$_ApiResponseGenresFromJson(Map<String, dynamic> json) =>
    _$_ApiResponseGenres(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => MovieGenre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiResponseGenresToJson(
        _$_ApiResponseGenres instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
