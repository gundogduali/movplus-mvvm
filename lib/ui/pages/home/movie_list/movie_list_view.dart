import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movplus_mvvm/ui/route/app_router.dart';

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
          releaseDate : widget.movies?[index].releaseDate ?? '',
          voteAverage : widget.movies?[index].voteAverage ?? 0,
          onTap: () => context.router.push(MovieDetailScreen(movie: widget.movies?[index])),
        );
      },
    );
  }
}
