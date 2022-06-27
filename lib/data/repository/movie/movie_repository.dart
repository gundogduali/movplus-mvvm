import '../../model/movie/cast_model.dart';
import '../../model/movie/movie_model.dart';
import '../../model/video/video_model.dart';
import '../../tables/movie_table.dart';

abstract class MovieRepository {
  Future<List<MovieModel>> getTrendingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getUpcomingMovies();
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<CastModel>> getCast(
      {required int movieId});
  Future<List<VideoModel>> getVideos({required int movieId});
  Future<List<MovieModel>> searchMovies({required String query,required int page});
  Future<List<MovieModel>> getMoviesbyGenre({required int genreId,required int page});
  Future<void> saveMovie(MovieModel movie);
  Future<bool> checkIfMovieFavorite(int movieId);
  Future<void> deleteMovie(int movieId);
  Future<List<MovieTable>> getAllMovies();
}
