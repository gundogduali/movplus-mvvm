import 'package:flutter/material.dart';

import '../../common/extensions/size_extensions.dart';
import '../theme/app_colors.dart';

class TransparentButton extends StatelessWidget {
  const TransparentButton(
      {Key? key,
      required this.icon,
      required this.onPressed,
      required this.label})
      : super(key: key);
  final Widget icon;
  final Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.h,
      width: 120.w,
      child: ElevatedButton.icon(
        icon: icon,
        onPressed: onPressed,
        label: Text(
          label,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: AppColors.alizarinCrimson,
                fontSize: 14.sp,
              ),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            onPrimary: AppColors.alizarinCrimson,
            side: const BorderSide(
              color: AppColors.alizarinCrimson,
            )),
      ),
    );
  }
}
