import 'package:flutter/material.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../gen/assets.gen.dart';
import '../../../theme/app_colors.dart';

class HomeMenuCard extends StatelessWidget {
  const HomeMenuCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.onTap,
      required this.radius})
      : super(key: key);

  final String title;
  final SvgGenImage image;
  final Function()? onTap;
  final int radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            CircleAvatar(
              radius: radius.w,
              backgroundColor: AppColors.ebonyClay,
              child: image.svg(width: radius.w),
            ),
            SizedBox(height: 4.h),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
