import 'package:movplus_mvvm/data/model/movie/cast_model.dart';

import '../../model/movie/movie_model.dart';
import '../../model/video/video_model.dart';

abstract class MovieRepository {
  Future<List<MovieModel>> getTrendingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getUpcomingMovies();
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<List<CastModel>> getCast(
      {required int movieId});
  Future<List<VideoModel>> getVideos({required int movieId});
}
