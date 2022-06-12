import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/screenutil/screenutil.dart';
import '../../../../data/model/movie/movie_model.dart';
import '../widgets/home_movie_list_label.dart';
import 'movie_list_view.dart';

class MovieList extends HookConsumerWidget {
  MovieList({this.movies, required this.label, Key? key}) : super(key: key);

  List<MovieModel>? movies;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return movies == null
        ? const SizedBox()
        : Padding(
            padding: EdgeInsets.only(left: 16.w, bottom: 8.h),
            child: Column(
              children: [
                HomeMovieListLabel(label: label),
                SizedBox(
                  height: ScreenUtil.screenHeight * 0.4,
                  child: MovieListView(movies: movies),
                ),
              ],
            ));
  }
}
