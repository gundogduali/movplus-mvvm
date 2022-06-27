import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/api_constants.dart';
import '../../local/movie_local_data_source.dart';
import '../../local/movie_local_data_source_impl.dart';
import '../../model/movie/cast_model.dart';
import '../../model/movie/movie_model.dart';
import '../../model/video/video_model.dart';
import '../../remote/movie/movie_remote_data_source.dart';
import '../../tables/movie_table.dart';
import 'movie_repository.dart';

final movieRepositoryProvider =
    Provider((ref) => MovieRepositoryImpl(ref.read));

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._reader);

  final Reader _reader;

  late final MovieRemoteDataSource _movieRemoteDataSource =
      _reader(movieRemoteDataSourceProvider);

  late final MovieLocalDataSource _movieLocalDataSource =
      _reader(movieLocalDataSourceProvider);

  @override
  Future<List<MovieModel>> getTrendingMovies() async {
    final response = await _movieRemoteDataSource.getTrendingMovies(
      apiKey: ApiConstants.apiKey,
    );
    return response.results;
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await _movieRemoteDataSource.getPopularMovies(
        apiKey: ApiConstants.apiKey);
    return response.results;
  }

  @override
  Future<List<MovieModel>> getUpcomingMovies() async {
    final response = await _movieRemoteDataSource.getUpcomingMovies(
        apiKey: ApiConstants.apiKey);
    return response.results;
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await _movieRemoteDataSource.getNowPlayingMovies(
        apiKey: ApiConstants.apiKey);
    return response.results;
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await _movieRemoteDataSource.getTopRatedMovies(
        apiKey: ApiConstants.apiKey);
    return response.results;
  }

  @override
  Future<List<CastModel>> getCast({required int movieId}) async {
    final response = await _movieRemoteDataSource.getMovieCredits(
      movieId: movieId,
      apiKey: ApiConstants.apiKey,
    );
    return response.cast;
  }

  @override
  Future<List<VideoModel>> getVideos({required int movieId}) async {
    final response = await _movieRemoteDataSource.getMovieVideos(
      movieId: movieId,
      apiKey: ApiConstants.apiKey,
    );
    return response.results;
  }

  @override
  Future<List<MovieModel>> searchMovies(
      {required String query, required int page}) async {
    final response = await _movieRemoteDataSource.searchMovies(
      query: query,
      apiKey: ApiConstants.apiKey,
      page: page,
    );
    return response.results;
  }

  @override
  Future<List<MovieModel>> getMoviesbyGenre(
      {required int genreId, required int page}) async {
    final response = await _movieRemoteDataSource.getMoviesbyGenre(
      genreId: genreId,
      apiKey: ApiConstants.apiKey,
      page: page,
    );
    return response.results;
  }

  @override
  Future<bool> checkIfMovieFavorite(int movieId) async {
    try {
      return await _movieLocalDataSource.checkIfMovieFavorite(movieId);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }

  @override
  Future<void> deleteMovie(int movieId) async {
    try {
      final response = await _movieLocalDataSource.deleteMovie(movieId);
      return response;
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<List<MovieTable>> getAllMovies() async {
    try {
      final response = await _movieLocalDataSource.getAllMovies();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveMovie(MovieModel movie) async {
    try {
      final response = await _movieLocalDataSource
          .saveMovie(MovieTable.fromMovieModel(movie));
      return response;
    } catch (e) {}
  }
}
