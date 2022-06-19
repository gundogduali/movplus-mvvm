import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../route/app_router.dart';
import 'genre_tabbed/genre_tab_card.dart';
import 'genre_tabbed/genre_tab_constants.dart';

class GenreGridView extends StatelessWidget {
  const GenreGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.w,
        childAspectRatio: 0.95,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: GenreTabConstants.genreTabs.length,
      itemBuilder: (context, index) {
        var genre = GenreTabConstants.genreTabs[index];
        return GenreTabCard(
          image: genre.image,
          title: genre.title,
          onTap: () {
            context.router
                .push(GenreMoviesScreen(id: genre.id, title: genre.title));
          },
        );
      },
    );
  }
}
