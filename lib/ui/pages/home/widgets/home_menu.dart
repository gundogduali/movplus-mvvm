import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import 'home_menu_card.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomeMenuCard(
          radius: 28,
          image: Assets.svgs.icSeries,
          title: 'Series',
          onTap: () {},
        ),
        HomeMenuCard(
          radius: 28,
          image: Assets.svgs.icCategory,
          title: 'Genre',
          onTap: () => context.router.pushNamed('/genre'),
        ),
      ],
    );
  }
}
