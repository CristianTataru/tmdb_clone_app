// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      name: json['name'] as String,
      photoPath: json['profile_path'] as String?,
      character: json['character'] as String? ?? '',
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'name': instance.name,
      'profile_path': instance.photoPath,
      'character': instance.character,
      'id': instance.id,
    };
