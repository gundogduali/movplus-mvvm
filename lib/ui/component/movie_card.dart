import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../common/extensions/size_extensions.dart';
import '../../common/extensions/string_extensions.dart';
import '../../data/core/api_constants.dart';
import '../../data/model/movie/movie_model.dart';
import '../route/app_router.gr.dart';
import '../theme/app_colors.dart';
import 'vote_average_widget.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(this._movie, {Key? key}) : super(key: key);
  final MovieModel _movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(MovieDetailScreen(movie: _movie));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.w),
              child: Image.network(
                '${ApiConstants.baseImageUrl}${_movie.posterPath}',
                fit: BoxFit.fitHeight,
                errorBuilder: (context, obj, trace) {
                  return const Placeholder(
                    color: AppColors.alizarinCrimson,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 8.w),
          Text(
            _movie.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: AppColors.white),
          ),
          SizedBox(height: 4.w),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _movie.releaseDate == null
                    ? '????'
                    : _movie.releaseDate!.dateSubstring(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: AppColors.santasGray),
              ),
              VoteAverageWidget(
                  voteAverage: _movie.voteAverage ?? 0,
                  iconSize: 8,
                  textStyle: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: AppColors.santasGray)),
            ],
          ),
        ],
      ),
    );
  }
}
