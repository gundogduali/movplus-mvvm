import 'package:freezed_annotation/freezed_annotation.dart';

import 'cast_model.dart';

part 'movie_credits_model.freezed.dart';
part 'movie_credits_model.g.dart';

@freezed
class MovieCreditsModel with _$MovieCreditsModel {
  factory MovieCreditsModel({
    required int id,
    @JsonKey(name: 'cast') required List<CastModel> cast,
  }) = _MovieCreditsModel;

  factory MovieCreditsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieCreditsModelFromJson(json);
}
