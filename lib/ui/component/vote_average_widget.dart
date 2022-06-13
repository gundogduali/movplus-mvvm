import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../common/extensions/size_extensions.dart';
import '../theme/app_colors.dart';

class VoteAverageWidget extends StatelessWidget {
  const VoteAverageWidget({Key? key, required this.voteAverage, required this.textStyle})
      : super(key: key);
  final double voteAverage;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(IconlyBold.star, color: AppColors.treePoppy, size: 8.w),
        SizedBox(width: 4.w),
        Text(
          '$voteAverage',
          style: textStyle,
        ),
      ],
    );
  }
}
