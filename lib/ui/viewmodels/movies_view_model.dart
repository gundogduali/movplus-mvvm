import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/movie/movie_model.dart';
import '../../data/repository/movie/movie_repository.dart';
import '../../data/repository/movie/movie_repository_impl.dart';

final moviesViewModelProvider = Provider((ref) => MoviesViewModel(ref.read));

final futurePopularMoviesProvider = FutureProvider(
    (ref) => ref.read(moviesViewModelProvider).fetchPopularMovies());

final futureUpcomingMoviesProvider = FutureProvider(
    (ref) => ref.read(moviesViewModelProvider).fetchUpcomingMovies());

final futureMoviesProvider =
    FutureProvider((ref) => ref.read(moviesViewModelProvider).fetchMovies());

final futureNowPlayingMoviesProvider = FutureProvider(
    (ref) => ref.read(moviesViewModelProvider).fetchNowPlayingMovies());

final futureTopRatedMoviesProvider = FutureProvider(
    (ref) => ref.read(moviesViewModelProvider).fetchTopRatedMovies());

class MoviesViewModel extends ChangeNotifier {
  MoviesViewModel(this._reader);

  final Reader _reader;

  late final MovieRepository _movieRepository =
      _reader(movieRepositoryProvider);

  int currentIndex = 0;

  PageController pageController = PageController(
    viewportFraction: 0.8,
    keepPage: false,
    initialPage: 0,
  );

  onPageChanged(int index) {
    currentIndex = index;

    notifyListeners();
  }

  Future<List<MovieModel>> fetchMovies() async {
    return await _movieRepository.getTrendingMovies();
  }

  Future<List<MovieModel>> fetchPopularMovies() async {
    return await _movieRepository.getPopularMovies();
  }

  Future<List<MovieModel>> fetchUpcomingMovies() async {
    return await _movieRepository.getUpcomingMovies();
  }

  Future<List<MovieModel>> fetchNowPlayingMovies() async {
    return await _movieRepository.getNowPlayingMovies();
  }

  Future<List<MovieModel>> fetchTopRatedMovies() async {
    return await _movieRepository.getTopRatedMovies();
  }
}
