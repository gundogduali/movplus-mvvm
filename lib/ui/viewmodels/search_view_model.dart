import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/movie/movie_model.dart';
import '../../data/model/search/page_data.dart';
import '../../data/repository/movie/movie_repository.dart';
import '../../data/repository/movie/movie_repository_impl.dart';

final searchPageViewModelProvider =
    StateNotifierProvider<SearchPageViewModel, PageData>(
        (ref) => SearchPageViewModel(ref.read));

class SearchPageViewModel extends StateNotifier<PageData> {
  SearchPageViewModel(this._reader, [PageData? state])
      : super(state ?? PageData.initial());

  final Reader _reader;

  late final MovieRepository _movieRepository =
      _reader(movieRepositoryProvider);

  Future<void> getSearchedMovies() async {
    try {
      List<MovieModel> _movies = [];
      if (state.searchQuery!.isNotEmpty) {
        _movies = await _movieRepository.searchMovies(
          query: state.searchQuery!,
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

  void updateTextSearch(String _searchQuery) {
    try {
      state = state.copyWith(
        movies: [],
        page: 1,
        searchQuery: _searchQuery,
      );
      getSearchedMovies();
    } catch (e) {
      print(e);
    }
  }
}
