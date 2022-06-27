import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../../data/core/api_constants.dart';
import '../../../data/tables/movie_table.dart';
import '../../component/delete_button.dart';
import '../../component/vote_average_widget.dart';
import '../../theme/app_colors.dart';
import '../../viewmodels/favorite_movies_view_model.dart';

class WatchlistMovieCard extends ConsumerWidget {
  const WatchlistMovieCard({Key? key, required this.movie}) : super(key: key);
  final MovieTable movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favoriteMoviesProvider = ref.watch(favoriteMoviesViewModelProvider);
    return Padding(
      padding: EdgeInsets.only(bottom: 24.w),
      child: SizedBox(
        height: 154.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.w),
              child: Image.network(
                  '${ApiConstants.baseImageUrl}${movie.posterPath}'),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: AppColors.white),
                  ),
                  SizedBox(height: 4.h),
                  VoteAverageWidget(
                      voteAverage: movie.voteAverage ?? 0,
                      iconSize: 16,
                      textStyle: Theme.of(context).textTheme.caption!.copyWith(
                          color: AppColors.santasGray, fontSize: 12.sp)),
                  const Spacer(),
                  DeleteButton(
                    icon: const Icon(IconlyLight.delete),
                    onPressed: () =>
                        favoriteMoviesProvider.deleteMovie(movie.id),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
