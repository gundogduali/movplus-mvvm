import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../../data/tables/movie_table.dart';
import '../../component/movie_appbar.dart';
import '../../theme/app_colors.dart';
import '../../viewmodels/favorite_movies_view_model.dart';
import 'watchlist_listview.dart';

class WatchListScreen extends ConsumerWidget {
  const WatchListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favoriteMoviesProvider = ref.watch(favoriteMoviesViewModelProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 4.h),
        child: Column(
          children: [
            MovieAppBar(
              leading: Text(
                'Watchlist',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColors.white,
                    ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: favoriteMoviesProvider.getFavoriteMovies(),
                builder: (context, AsyncSnapshot<List<MovieTable>> snapshot) {
                  if (snapshot.data == null) {
                    return const SizedBox.shrink();
                  } else if (snapshot.data!.isEmpty) {
                    return Center(
                        child: Text(
                      'No Movies Found',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: AppColors.white),
                    ));
                  } else {
                    return WatchlistListView(movies: snapshot.data!);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
