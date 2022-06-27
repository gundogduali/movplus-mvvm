
import '../tables/movie_table.dart';

abstract class MovieLocalDataSource {
  Future<void> saveMovie(MovieTable movie);
  Future<List<MovieTable>> getAllMovies();
  Future<void> deleteMovie(int movieId);
  Future<bool> checkIfMovieFavorite(int movieId);
}