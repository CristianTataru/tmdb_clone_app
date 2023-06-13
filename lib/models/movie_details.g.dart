// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      backgroundPosterPath: json['backdrop_path'] as String,
      collection: json['belongs_to_collection'] == null
          ? null
          : Collection.fromJson(
              json['belongs_to_collection'] as Map<String, dynamic>),
      budget: json['budget'] as int,
      overview: json['overview'] as String,
      productionCompanies: (json['production_companies'] as List<dynamic>)
          .map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
      releaseDate: json['release_date'] as String,
      revenue: json['revenue'] as int,
      spokenLanguages: (json['spoken_languages'] as List<dynamic>)
          .map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backgroundPosterPath,
      'belongs_to_collection': instance.collection,
      'budget': instance.budget,
      'overview': instance.overview,
      'production_companies': instance.productionCompanies,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'spoken_languages': instance.spokenLanguages,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
