import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movplus_mvvm/ui/route/app_router.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../data/core/api_constants.dart';

class MovieCarouselCardWidget extends StatelessWidget {
  const MovieCarouselCardWidget(
      {Key? key, required this.movieId, required this.posterPath})
      : super(key: key);
  final int movieId;
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Material(
        elevation: 32,
        borderRadius: BorderRadius.circular(16.w),
        child: InkWell(
          onTap: () => context.router.push(
            MovieDetailScreen(movieId: movieId),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.w),
            child: Image.network(
              '${ApiConstants.baseImageUrl}$posterPath',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
