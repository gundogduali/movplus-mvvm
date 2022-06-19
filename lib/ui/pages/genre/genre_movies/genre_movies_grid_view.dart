import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../data/model/movie/movie_model.dart';
import '../../../component/movie_card.dart';
import '../../../viewmodels/genre_movies_view_model.dart';

class GenreMoviesGridView extends ConsumerWidget {
  const GenreMoviesGridView({Key? key, required this.movies}) : super(key: key);
  final List<MovieModel>? movies;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _genrePageDataController =
        ref.watch(genreMoviesViewModelProvider.notifier);
    if (movies != null) {
      return NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollEndNotification) {
            final before = notification.metrics.extentBefore;
            final max = notification.metrics.maxScrollExtent;
            if (before == max) {
              _genrePageDataController.getGenreMovies();
              return true;
            }
            return false;
          }
          return false;
        },
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.w,
            childAspectRatio: 0.53,
          ),
          itemCount: movies!.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieCard(movies![index]);
          },
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
