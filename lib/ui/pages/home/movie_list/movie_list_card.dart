import 'package:flutter/material.dart';
import 'package:movplus_mvvm/ui/component/vote_average_widget.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/extensions/string_extensions.dart';
import '../../../theme/app_colors.dart';

class MovieListCard extends StatelessWidget {
  const MovieListCard(
      {Key? key,
      required this.movieId,
      required this.posterPath,
      required this.title,
      required this.releaseDate,
      required this.voteAverage,
      required this.onTap})
      : super(key: key);

  final int movieId;
  final String posterPath;
  final String title;
  final String releaseDate;
  final double voteAverage;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.w),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500/$posterPath',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Text(
                title.intelliTrim(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: AppColors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    releaseDate.dateSubstring(),
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: AppColors.santasGray),
                  ),
                  SizedBox(width: 110.w),
                  VoteAverageWidget(
                    voteAverage: voteAverage,
                    textStyle: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: AppColors.santasGray),
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
