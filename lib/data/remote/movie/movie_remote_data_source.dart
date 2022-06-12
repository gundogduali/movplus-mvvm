import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';

import '../../core/app_dio.dart';
import '../../model/movie/movies_response_model.dart';

part 'movie_remote_data_source.g.dart';

final movieRemoteDataSourceProvider =
    Provider((ref) => MovieRemoteDataSource(ref.read));

@RestApi()
abstract class MovieRemoteDataSource {
  factory MovieRemoteDataSource(Reader reader) =>
      _MovieRemoteDataSource(reader(dioProvider));

  @GET('trending/movie/day')
  Future<MoviesResponseModel> getTrendingMovies({
    @Query('api_key') required String apiKey,
  });

  @GET('movie/popular')
  Future<MoviesResponseModel> getPopularMovies({
    @Query('api_key') required String apiKey,
  });

  @GET('movie/upcoming')
  Future<MoviesResponseModel> getUpcomingMovies({
    @Query('api_key') required String apiKey,
  });
}
