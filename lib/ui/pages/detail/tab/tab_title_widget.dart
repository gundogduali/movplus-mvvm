import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../theme/app_colors.dart';



class TabTitleWidget extends ConsumerWidget {
  final String title;
  final Function() onTap;
  final bool isSelected;

  const TabTitleWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);



  @override
  Widget build(BuildContext context,WidgetRef ref) {
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 14.h,
        width: 170.w,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color:
                  isSelected ? AppColors.alizarinCrimson : Colors.transparent,
              width: 1.h,
            ),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: isSelected ? AppColors.alizarinCrimson : AppColors.white,
              ),
        ),
      ),
    );
  }
}
