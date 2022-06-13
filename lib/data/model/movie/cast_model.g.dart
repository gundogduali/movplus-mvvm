// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CastModel _$$_CastModelFromJson(Map<String, dynamic> json) => _$_CastModel(
      id: json['id'] as int,
      name: json['name'] as String,
      character: json['character'] as String,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$_CastModelToJson(_$_CastModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.profilePath,
    };
