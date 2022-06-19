import 'package:flutter/material.dart';

import '../../common/extensions/size_extensions.dart';
import '../../common/screenutil/screenutil.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({Key? key, required this.leading, this.action})
      : super(key: key);
  final Widget leading;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: ScreenUtil.statusBarHeight + 4.h, bottom: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading,
          action ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
