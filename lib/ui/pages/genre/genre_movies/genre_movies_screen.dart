import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../component/movie_appbar.dart';
import '../../../theme/app_colors.dart';
import '../../../viewmodels/genre_movies_view_model.dart';
import 'genre_movies_grid_view.dart';

class GenreMoviesScreen extends ConsumerStatefulWidget {
  const GenreMoviesScreen({Key? key, required this.id, required this.title})
      : super(key: key);
  final int id;
  final String title;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GenreMoviesScreenState();
}

class _GenreMoviesScreenState extends ConsumerState<GenreMoviesScreen> {
  
  @override
  void initState() {
    super.initState();
    var _provider = ref.read(genreMoviesViewModelProvider.notifier);
    _provider.updateGenreId(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    var _genreMoviesData = ref.watch(genreMoviesViewModelProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieAppBar(
                leading: IconButton(
                    onPressed: () => context.router.pop(),
                    icon: const Icon(Icons.arrow_back))),
            Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColors.white),
            ),
            Expanded(child: GenreMoviesGridView(movies: _genreMoviesData.movies)),
          ],
        ),
      ),
    );
  }
}
