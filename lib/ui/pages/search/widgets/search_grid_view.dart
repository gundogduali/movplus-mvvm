import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../data/model/movie/movie_model.dart';
import '../../../../gen/assets.gen.dart';
import '../../../component/movie_card.dart';
import '../../../theme/app_colors.dart';
import '../../../viewmodels/search_view_model.dart';
import '../../home/widgets/home_menu_card.dart';

class SearchGridView extends ConsumerWidget {
  const SearchGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _searchPageData = ref.watch(searchPageViewModelProvider);
    var _searchPageDataController =
        ref.watch(searchPageViewModelProvider.notifier);

    final List<MovieModel>? _movies = _searchPageData.movies;

    if (_movies != null) {
      if (_movies.isNotEmpty) {
        return NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollEndNotification) {
              final before = notification.metrics.extentBefore;
              final max = notification.metrics.maxScrollExtent;
              if (before == max) {
                _searchPageDataController.getSearchedMovies();
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
            itemCount: _movies.length,
            itemBuilder: (BuildContext context, int index) {
              return MovieCard(_movies[index]);
            },
          ),
        );
      }
      if (_movies.isEmpty) {
        return _movieNotFound(context);
      }
    }
    return const SizedBox.shrink();
  }

  Center _movieNotFound(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeMenuCard(
              title: '',
              image: Assets.svgs.icMovie,
              onTap: () {},
              radius: 44,
            ),
            Text(
              'Search not found.',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: AppColors.white),
            ),
            SizedBox(height: 4.h),
            Text(
              'Please search for other keywords.',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      );
  }
}
