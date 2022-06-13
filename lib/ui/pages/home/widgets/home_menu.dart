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
          image: Assets.svgs.icSeries,
          title: 'Series',
          onTap: () {},
        ),
        HomeMenuCard(
          image: Assets.svgs.icCategory,
          title: 'Genre',
          onTap: () {},
        ),
      ],
    );
  }
}
