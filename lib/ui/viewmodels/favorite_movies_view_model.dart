import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/movie/movie_model.dart';
import '../../data/repository/movie/movie_repository.dart';
import '../../data/repository/movie/movie_repository_impl.dart';
import '../../data/tables/movie_table.dart';

final favoriteMoviesViewModelProvider = ChangeNotifierProvider(
  (ref) => FavoriteMoviesViewModel(ref.read),
);

class FavoriteMoviesViewModel extends ChangeNotifier {
  FavoriteMoviesViewModel(this._reader);

  final Reader _reader;

  late final MovieRepository _repository = _reader(movieRepositoryProvider);

  Future<bool> isFavorite(int movieId) async {
    return await _repository.checkIfMovieFavorite(movieId);
  }

  Future<void> deleteMovie(int movieId) async {
    await _repository.deleteMovie(movieId);
    notifyListeners();
  }

  Future<void> saveMovie(MovieModel movie) async {
    await _repository.saveMovie(movie);
    notifyListeners();
  }

  Future<List<MovieTable>> getFavoriteMovies() async {
    return await _repository.getAllMovies();
  }

  Future<bool> toggleFavoriteMovie(MovieModel movie) async {
    if (await isFavorite(movie.id)) {
      deleteMovie(movie.id);
    } else {
      saveMovie(movie);
    }
    return await isFavorite(movie.id);
  }
}
