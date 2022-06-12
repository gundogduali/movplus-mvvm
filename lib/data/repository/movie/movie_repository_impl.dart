import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/api_constants.dart';
import '../../model/movie/movie_model.dart';
import '../../remote/movie/movie_remote_data_source.dart';
import 'movie_repository.dart';

final movieRepositoryProvider =
    Provider((ref) => MovieRepositoryImpl(ref.read));

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._reader);

  final Reader _reader;

  late final MovieRemoteDataSource _movieRemoteDataSource =
      _reader(movieRemoteDataSourceProvider);

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
}
