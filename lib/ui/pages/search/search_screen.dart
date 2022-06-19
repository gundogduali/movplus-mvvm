import 'package:flutter/material.dart';

import '../../../common/extensions/size_extensions.dart';
import '../../theme/app_colors.dart';
import 'widgets/search_app_bar.dart';
import 'widgets/search_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchAppBar(),
            SizedBox(height: 16.w),
            Text(
              'Search Result',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: AppColors.white,
                  ),
            ),
            SizedBox(height: 16.w),
            const Expanded(child: SearchGridView()),
          ],
        ),
      ),
    );
  }
}
