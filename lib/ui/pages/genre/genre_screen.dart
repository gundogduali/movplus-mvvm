import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../component/movie_appbar.dart';
import '../../theme/app_colors.dart';
import 'genre_grid_view.dart';

class GenreScreen extends StatelessWidget {
  const GenreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'Genre',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColors.white),
            ),
            SizedBox(height: 4.h),
            Text('Find movies by genre',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: AppColors.santasGray)),
            SizedBox(height: 4.h),
            const Expanded(child: GenreGridView()),
          ],
        ),
      ),
    );
  }
}
