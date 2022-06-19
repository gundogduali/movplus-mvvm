import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/screenutil/screenutil.dart';
import 'search_field_widget.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + ScreenUtil.screenHeight * 0.014,
      ),
      child: SizedBox(
        height: ScreenUtil.screenHeight * 0.075,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: Icon(
                  IconlyLight.arrow_left_2,
                  size: 24.w,
                )),
            Expanded(
              child: SearchFieldWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
