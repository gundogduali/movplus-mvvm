import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../viewmodels/movies_view_model.dart';
import 'carousel/movie_carousel.dart';
import 'movie_list/movie_list.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_menu.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesViewModel = ref.watch(moviesViewModelProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(),
            const HomeMenu(),
            const MovieCarousel(),
            ref.watch(futurePopularMoviesProvider).when(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  data: (data) {
                    if (data.isEmpty) {
                      return const Center(
                        child: Text('No movies found'),
                      );
                    }
                    return MovieList(
                      movies: data,
                      label: 'Popular Movies',
                    );
                  },
                  error: (_, __) {
                    return const Center(
                      child: Text('Error'),
                    );
                  },
                ),
            ref.watch(futureUpcomingMoviesProvider).when(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  data: (data) {
                    if (data.isEmpty) {
                      return const Center(
                        child: Text('No movies found'),
                      );
                    }
                    return MovieList(
                      movies: data,
                      label: 'Upcoming Movies',
                    );
                  },
                  error: (_, __) {
                    return const Center(
                      child: Text('Error'),
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}
