import 'package:hive/hive.dart';

import '../model/movie/movie_model.dart';

part 'movie_table.g.dart';

@HiveType(typeId: 0)
class MovieTable{
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String posterPath;

  @HiveField(3)
  final double? voteAverage;

  MovieTable({
    required this.id,
    required this.title,
    required this.posterPath,
    this.voteAverage,
  });

  

  factory MovieTable.fromMovieModel(MovieModel movieModel) {
    return MovieTable(
      id: movieModel.id,
      title: movieModel.title,
      posterPath: movieModel.posterPath?? '',
      voteAverage: movieModel.voteAverage,
    );
  }
}
