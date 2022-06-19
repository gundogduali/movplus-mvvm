import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../theme/app_colors.dart';

class GenreTabCard extends StatelessWidget {
  const GenreTabCard(
      {Key? key, required this.image, required this.title, required this.onTap})
      : super(key: key);
  final AssetGenImage image;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          image.image(),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: AppColors.white))
        ],
      ),
    );
  }
}
