import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/extensions/string_extensions.dart';
import '../../../route/app_router.gr.dart';
import '../../../theme/app_colors.dart';

class MovieListCard extends StatelessWidget {
  const MovieListCard(
      {Key? key,
      required this.movieId,
      required this.posterPath,
      required this.title})
      : super(key: key);

  final int movieId;
  final String posterPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: GestureDetector(
        onTap: () => context.router.push(
          MovieDetailScreen(movieId: movieId),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
          ],
        ),
      ),
    );
  }
}
