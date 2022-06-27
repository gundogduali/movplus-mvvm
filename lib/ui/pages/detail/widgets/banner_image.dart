import 'package:flutter/material.dart';
import 'package:movplus_mvvm/ui/theme/app_colors.dart';

import '../../../../common/screenutil/screenutil.dart';
import '../../../../data/core/api_constants.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.transparent],
        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      },
      blendMode: BlendMode.dstIn,
      child: Image.network(
        '${ApiConstants.baseImageUrl}$imagePath',
        fit: BoxFit.cover,
        height: ScreenUtil.screenHeight * 0.61,
        width: ScreenUtil.screenWidth,
        errorBuilder: (context, obj, trace) {
          return const Placeholder(
            color: AppColors.white,
          );
        },
      ),
    );
  }
}
