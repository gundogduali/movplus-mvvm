import 'package:flutter/material.dart';
import 'package:movplus_mvvm/common/extensions/size_extensions.dart';
import 'package:movplus_mvvm/data/model/movie/movie_model.dart';
import 'package:movplus_mvvm/ui/pages/detail/tab/detail_tabbed_widget.dart';
import 'package:movplus_mvvm/ui/pages/detail/widgets/banner_widget.dart';
import 'package:movplus_mvvm/ui/theme/app_colors.dart';

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
              movie: movie,
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
