import 'package:flutter/material.dart';

import '../../common/extensions/size_extensions.dart';
import '../theme/app_colors.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final Widget icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.w,
      width: 40.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.santasGray),
        borderRadius: BorderRadius.circular(4.w),
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        color: AppColors.santasGray,
      ),
    );
  }
}
