import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../viewmodels/movies_view_model.dart';
import 'movie_carousel_page_view.dart';

class MovieCarousel extends HookConsumerWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesViewModel = ref.read(moviesViewModelProvider);
    final movies = ref.watch(futureMoviesProvider);

    return movies == null
        ? const SizedBox()
        : movies.when(
            loading: () => const CircularProgressIndicator(),
            data: (data) {
              if (data.isEmpty) {
                return const Center(
                  child: Text('No movies found'),
                );
              }
              return MovieCarouselPageView(
                movies: data,
                onPageChanged: moviesViewModel.onPageChanged,
                pageController: moviesViewModel.pageController,
                currentIndex: moviesViewModel.currentIndex,
              );
            },
            error: (_, __) {
              return const Center(
                child: Text('Error'),
              );
            });
  }
}
