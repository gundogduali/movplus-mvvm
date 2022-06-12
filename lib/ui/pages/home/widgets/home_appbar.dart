import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../common/screenutil/screenutil.dart';
import '../../../../gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + 4.h,
        left: 16.w,
        right: 16.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.pngs.logo.image(height: 12.h),
          IconButton(
            icon: const Icon(IconlyLight.search),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
