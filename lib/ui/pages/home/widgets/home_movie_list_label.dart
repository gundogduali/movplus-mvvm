import 'package:flutter/material.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../theme/app_colors.dart';

class HomeMovieListLabel extends StatelessWidget {
  const HomeMovieListLabel({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h, right: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}
