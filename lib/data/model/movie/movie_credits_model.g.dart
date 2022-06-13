// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieCreditsModel _$$_MovieCreditsModelFromJson(Map<String, dynamic> json) =>
    _$_MovieCreditsModel(
      id: json['id'] as int,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieCreditsModelToJson(
        _$_MovieCreditsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
