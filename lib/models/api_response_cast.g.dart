// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponseCast _$$_ApiResponseCastFromJson(Map<String, dynamic> json) =>
    _$_ApiResponseCast(
      cast: (json['cast'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApiResponseCastToJson(_$_ApiResponseCast instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };
