import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';

import '../../core/app_dio.dart';
import '../../model/movie/movie_credits_model.dart';
import '../../model/movie/movies_response_model.dart';
import '../../model/video/video_response_model.dart';

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
  @GET('movie/now_playing')
  Future<MoviesResponseModel> getNowPlayingMovies({
    @Query('api_key') required String apiKey,
  });

  @GET('movie/top_rated')
  Future<MoviesResponseModel> getTopRatedMovies({
    @Query('api_key') required String apiKey,
  });

  @GET('movie/{movie_id}/credits')
  Future<MovieCreditsModel> getMovieCredits({
    @Path('movie_id') required int movieId,
    @Query('api_key') required String apiKey,
  });

  @GET('movie/{movie_id}/videos')
  Future<VideoResponseModel> getMovieVideos({
    @Path('movie_id') required int movieId,
    @Query('api_key') required String apiKey,
  });

  @GET('search/movie')
  Future<MoviesResponseModel> searchMovies({
    @Query('api_key') required String apiKey,
    @Query('query') required String query,
    @Query('page') required int page,
    @Query('include_adult') bool includeAdult = true,
  });

  @GET('discover/movie')
  Future<MoviesResponseModel> getMoviesbyGenre({
    @Query('api_key') required String apiKey,
    @Query('with_genres') required int genreId,
    @Query('page') required int page,
  });
}
