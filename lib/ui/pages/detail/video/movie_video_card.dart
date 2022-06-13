import 'package:flutter/material.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../theme/app_colors.dart';

class MovieVideoCard extends StatelessWidget {
  const MovieVideoCard(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.onTap})
      : super(key: key);
  final String imageUrl;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.network(imageUrl, height: 50.h, fit: BoxFit.fitHeight),
            borderRadius: BorderRadius.circular(8.w),
          ),
          SizedBox(height: 8.w),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.white,
                ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
