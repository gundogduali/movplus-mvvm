import 'package:flutter/material.dart';
import 'package:movplus_mvvm/ui/pages/home/movie_list/movie_list_all_widget.dart';

import 'carousel/movie_carousel.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeAppBar(),
            HomeMenu(),
            MovieCarousel(),
            MovieListAll(),
          ],
        ),
      ),
    );
  }
}
