import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    @JsonKey(name: 'vote_count') int? voteCount,
    required int id,
    @Default(false) bool video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    required String title,
    double? popularity,
    @JsonKey(
        name: 'poster_path',
        defaultValue:
            'https://www.dentanice.com.tr/wp-content/uploads/2016/10/orionthemes-placeholder-image.png')
        String? posterPath,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    bool? adult,
    String? overview,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
