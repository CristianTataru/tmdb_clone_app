// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
      posterPath: json['poster_path'] as String,
      rating: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
      backgroundPosterPath: json['backdrop_path'] as String,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'genre_ids': instance.genreIds,
      'poster_path': instance.posterPath,
      'vote_average': instance.rating,
      'vote_count': instance.voteCount,
      'backdrop_path': instance.backgroundPosterPath,
    };
