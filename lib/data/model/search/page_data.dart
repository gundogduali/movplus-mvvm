import '../movie/movie_model.dart';

class PageData {
  final List<MovieModel>? movies;
  final int? page;
  final String? searchQuery;
  final int? genreId;

  PageData({this.movies, this.page, this.searchQuery,this.genreId, });

  PageData.initial()
      : movies = [],
        page = 1,
        searchQuery = '',genreId = 0;

  PageData copyWith({
    List<MovieModel>? movies,
    int? page,
    String? searchQuery,
    int? genreId,
  }) {
    return PageData(
      movies: movies ?? this.movies,
      page: page ?? this.page,
      searchQuery: searchQuery ?? this.searchQuery,
      genreId: genreId ?? this.genreId,
    );
  }
}
