import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../viewmodels/movies_view_model.dart';
import 'movie_list.dart';

class MovieListAll extends ConsumerWidget {
  const MovieListAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
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
        ref.watch(futureNowPlayingMoviesProvider).when(
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
                  label: 'Now Playing Movies',
                );
              },
              error: (_, __) {
                return const Center(
                  child: Text('Error'),
                );
              },
            ),
        ref.watch(futureTopRatedMoviesProvider).when(
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
                  label: 'Top Rated Movies',
                );
              },
              error: (_, __) {
                return const Center(
                  child: Text('Error'),
                );
              },
            ),
      ],
    );
  }
}
