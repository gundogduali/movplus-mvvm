import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/extensions/string_extensions.dart';
import '../../../../common/screenutil/screenutil.dart';
import '../../../../data/model/movie/movie_model.dart';
import '../../../component/movie_appbar.dart';
import '../../../component/transparent_button.dart';
import '../../../component/vote_average_widget.dart';
import '../../../theme/app_colors.dart';
import '../../../viewmodels/movies_detail_view_model.dart';
import 'banner_image.dart';

class BannerWidget extends ConsumerWidget {
  const BannerWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieModel? movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.read(moviesDetailViewModelProvider);
    String genres = provider.genres(movie?.genreIds);
    String isAdult = (movie?.adult ?? true) ? '18+' : '18-';
    return Container(
      padding: EdgeInsets.only(top: ScreenUtil.statusBarHeight),
      height: ScreenUtil.screenHeight * 0.61,
      width: ScreenUtil.screenWidth,
      child: Stack(
        children: [
          BannerImage(imagePath: movie?.posterPath),
          MovieAppBar(
            leading: IconButton(
              onPressed: () => context.router.pop(),
              icon: const Icon(IconlyLight.arrow_left),
            ),
          ),
          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 16.w,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie?.title ?? '',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                SizedBox(height: 8.w),
                Text(
                  genres +
                      ' ⚪ ${movie?.releaseDate!.dateSubstring()} ⚪ $isAdult',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                SizedBox(height: 8.w),
                VoteAverageWidget(
                  voteAverage: movie?.voteAverage ?? 0.0,
                  textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                SizedBox(height: 18.w),
                TransparentButton(
                    icon: const Icon(IconlyLight.plus),
                    onPressed: () {},
                    label: 'Watchlist')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
