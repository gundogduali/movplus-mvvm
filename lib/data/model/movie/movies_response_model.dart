import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_model.dart';

part 'movies_response_model.freezed.dart';
part 'movies_response_model.g.dart';

@freezed
abstract class MoviesResponseModel with _$MoviesResponseModel {
  factory MoviesResponseModel({
    required int page,
    required List<MovieModel> results,
    @JsonKey(name: 'total_results') required int totalResults,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _MoviesResponseModel;

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseModelFromJson(json);
}
