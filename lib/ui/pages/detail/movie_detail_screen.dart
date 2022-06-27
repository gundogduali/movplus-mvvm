import 'package:flutter/material.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../../data/model/movie/movie_model.dart';
import '../../theme/app_colors.dart';
import 'tab/detail_tabbed_widget.dart';
import 'widgets/banner_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);
  final MovieModel? movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BannerWidget(
              movie: movie!,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.w, horizontal: 16.w),
              child: Text(
                movie?.overview ?? '',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: AppColors.white,
                    ),
              ),
            ),
            DetailTabbedWidget(movie?.id ?? 0),
          ],
        ),
      ),
    );
  }
}
