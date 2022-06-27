import 'package:flutter/material.dart';

import '../../../data/tables/movie_table.dart';
import 'watclist_movie_card.dart';

class WatchlistListView extends StatelessWidget {
  const WatchlistListView({Key? key, required this.movies}) : super(key: key);
  final List<MovieTable> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return WatchlistMovieCard(movie: movies[index]);
      },
    );
  }
}
