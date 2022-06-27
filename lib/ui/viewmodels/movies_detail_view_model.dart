import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants/movie_genres.dart';
import '../../data/model/movie/cast_model.dart';
import '../../data/model/video/video_model.dart';
import '../../data/repository/movie/movie_repository.dart';
import '../../data/repository/movie/movie_repository_impl.dart';

final moviesDetailViewModelProvider =
    ChangeNotifierProvider((ref) => MoviesDetailViewModel(ref.read));

final futureCastProvider = FutureProvider.family<List<CastModel>, int>(
  (ref, movieId) =>
      ref.read(moviesDetailViewModelProvider).fetchCast(movieId: movieId),
);

final futureVideoProvider = FutureProvider.family<List<VideoModel>, int>(
  (ref, movieId) =>
      ref.read(moviesDetailViewModelProvider).fetchVideos(movieId: movieId),
);

class MoviesDetailViewModel extends ChangeNotifier {
  final Reader _reader;

  MoviesDetailViewModel(this._reader);

  late final MovieRepository _movieRepository =
      _reader(movieRepositoryProvider);

  int tabIndex = 0;

  void setTabIndex(int index) {
    tabIndex = index;

    notifyListeners();
  }

  String genres(List<int>? genreIds) {
    String genreText = '';
    if (genreIds == null) {
      return '';
    }
    for (var element in genreIds) {
      genreText += "${MovieGenres().listOfGenres[element]}, ";
    }

    if (genreText.length > 3) {
      return genreText.substring(0, genreText.length - 2);
    }
    return genreText;
  }

  Future<List<CastModel>> fetchCast({required int movieId}) async {
    return await _movieRepository.getCast(movieId: movieId);
  }

  Future<List<VideoModel>> fetchVideos({required int movieId}) async {
    return await _movieRepository.getVideos(movieId: movieId);
  }
}
