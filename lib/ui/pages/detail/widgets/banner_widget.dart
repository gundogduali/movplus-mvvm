import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:movplus_mvvm/ui/viewmodels/favorite_movies_view_model.dart';

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

class BannerWidget extends ConsumerStatefulWidget {
  const BannerWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieModel movie;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends ConsumerState<BannerWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = ref.read(moviesDetailViewModelProvider);
    var favoriteMovieProvider = ref.watch(favoriteMoviesViewModelProvider);

    String genres = provider.genres(widget.movie.genreIds);
    String isAdult = (widget.movie.adult ?? true) ? '18+' : '18-';
    return Container(
      padding: EdgeInsets.only(top: ScreenUtil.statusBarHeight),
      height: ScreenUtil.screenHeight * 0.61,
      width: ScreenUtil.screenWidth,
      child: Stack(
        children: [
          BannerImage(imagePath: widget.movie.posterPath),
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
                  widget.movie.title,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                SizedBox(height: 8.w),
                Text(
                  genres +
                      ' ⚪ ${widget.movie.releaseDate!.dateSubstring()} ⚪ $isAdult',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                SizedBox(height: 8.w),
                VoteAverageWidget(
                  voteAverage: widget.movie.voteAverage ?? 0.0,
                  iconSize: 8,
                  textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColors.white,
                      ),
                ),
                SizedBox(height: 18.w),
                FutureBuilder(
                    future: favoriteMovieProvider.isFavorite(widget.movie.id),
                    builder: (context, AsyncSnapshot<bool> snapshot) {
                      bool data = snapshot.data ?? false;
                      return TransparentButton(
                        icon:
                            Icon(data ? IconlyLight.delete : IconlyLight.plus),
                        onPressed: () async {
                          await favoriteMovieProvider
                              .toggleFavoriteMovie(widget.movie);
                        },
                        label: 'Watchlist',
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
