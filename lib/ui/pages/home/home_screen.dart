import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../../gen/assets.gen.dart';
import '../../component/movie_appbar.dart';
import 'carousel/movie_carousel.dart';
import 'movie_list/movie_list_all_widget.dart';
import 'widgets/home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: MovieAppBar(
                  leading: Assets.pngs.logo.image(height: 12.h),
                  action: IconButton(
                    icon: const Icon(IconlyLight.search),
                    onPressed: () {
                      context.router.pushNamed('/search');
                    },
                  )),
            ),
            const HomeMenu(),
            const MovieCarousel(),
            const MovieListAll(),
          ],
        ),
      ),
    );
  }
}
