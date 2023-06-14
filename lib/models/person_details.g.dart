// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonDetails _$$_PersonDetailsFromJson(Map<String, dynamic> json) =>
    _$_PersonDetails(
      knownFor: json['known_for_department'] as String?,
      birthPlace: json['place_of_birth'] as String?,
      birthday: json['birthday'] as String?,
      deathday: json['deathday'] as String?,
      biography: json['biography'] as String?,
    );

Map<String, dynamic> _$$_PersonDetailsToJson(_$_PersonDetails instance) =>
    <String, dynamic>{
      'known_for_department': instance.knownFor,
      'place_of_birth': instance.birthPlace,
      'birthday': instance.birthday,
      'deathday': instance.deathday,
      'biography': instance.biography,
    };
