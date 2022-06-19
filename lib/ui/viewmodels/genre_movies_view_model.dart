import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/movie/movie_model.dart';
import '../../data/model/search/page_data.dart';
import '../../data/repository/movie/movie_repository.dart';
import '../../data/repository/movie/movie_repository_impl.dart';

final genreMoviesViewModelProvider =
    StateNotifierProvider.autoDispose<GenreMoviesViewModel, PageData>(
        (ref) => GenreMoviesViewModel(ref.read));

class GenreMoviesViewModel extends StateNotifier<PageData> {
  GenreMoviesViewModel(this._reader, [PageData? state])
      : super(state ?? PageData.initial());

  final Reader _reader;

  late final MovieRepository _movieRepository =
      _reader(movieRepositoryProvider);

  Future<void> getGenreMovies() async {
    try {
      List<MovieModel> _movies = [];
      if (state.genreId! != 0) {
        _movies = await _movieRepository.getMoviesbyGenre(
          genreId: state.genreId!,
          page: state.page! + 1,
        );
      } else {
        _movies = [];
      }
      state = state.copyWith(
          movies: [...state.movies!, ..._movies], page: state.page! + 1);
    } catch (e) {
      print(e);
    }
  }

  void updateGenreId(int _genreId) {
    try {
      state = state.copyWith(
        movies: [],
        page: 1,
        genreId: _genreId,
      );
      getGenreMovies();
    } catch (e) {
      print(e);
    }
  }
}
