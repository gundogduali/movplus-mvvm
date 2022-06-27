import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../tables/movie_table.dart';
import 'movie_local_data_source.dart';

final movieLocalDataSourceProvider =
    Provider((ref) => MovieLocalDataSourceImpl());

class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  @override
  Future<bool> checkIfMovieFavorite(int movieId) async {
    final movieBox = await Hive.openBox('movieBox');
    return movieBox.containsKey(movieId);
  }

  @override
  Future<void> deleteMovie(int movieId) async {
    final movieBox = await Hive.openBox('movieBox');
    await movieBox.delete(movieId);
  }

  @override
  Future<List<MovieTable>> getAllMovies() async {
    final movieBox = await Hive.openBox('movieBox');
    final movieIds = movieBox.keys.toList();
    final movies = <MovieTable>[];
    for (final movieId in movieIds) {
      final movie = movieBox.get(movieId);
      movies.add(movie);
    }
    return movies;
  }

  @override
  Future<void> saveMovie(MovieTable movie) async {
    final movieBox = await Hive.openBox('movieBox');
    await movieBox.put(movie.id, movie);
  }
}
