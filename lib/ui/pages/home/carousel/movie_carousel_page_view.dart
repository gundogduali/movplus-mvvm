import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/screenutil/screenutil.dart';
import '../../../../data/model/movie/movie_model.dart';
import '../../../route/app_router.gr.dart';
import 'animated_movie_carousel_card_widget.dart';

class MovieCarouselPageView extends StatefulWidget {
  const MovieCarouselPageView(
      {Key? key,
      required this.movies,
      required this.currentIndex,
      required this.pageController,
      required this.onPageChanged})
      : super(key: key);
  final List<MovieModel> movies;
  final int currentIndex;
  final PageController pageController;
  final Function(int) onPageChanged;

  @override
  State<MovieCarouselPageView> createState() => _MovieCarouselPageViewState();
}

class _MovieCarouselPageViewState extends State<MovieCarouselPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.w),
      height: ScreenUtil.screenHeight * 0.52,
      child: PageView.builder(
        controller: widget.pageController,
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          final movie = widget.movies[index];
          return AnimatedMovieCardWidget(
            pageController: widget.pageController,
            index: index,
            movieId: movie.id,
            posterPath: movie.posterPath,
            onTap: () => context.router.push(MovieDetailScreen(movie: movie)),
          );
        },
        pageSnapping: true,
        onPageChanged: widget.onPageChanged,
      ),
    );
  }
}
