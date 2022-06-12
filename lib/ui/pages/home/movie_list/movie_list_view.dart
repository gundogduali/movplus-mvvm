import 'package:flutter/material.dart';

import '../../../../data/model/movie/movie_model.dart';
import 'movie_list_card.dart';

class MovieListView extends StatefulWidget {
  const MovieListView({Key? key, required this.movies}) : super(key: key);
  final List<MovieModel>? movies;

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: widget.movies?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        return MovieListCard(
          movieId: widget.movies?[index].id ?? 0,
          posterPath: widget.movies?[index].posterPath ?? '',
          title: widget.movies?[index].title ?? '',
        );
      },
    );
  }
}
