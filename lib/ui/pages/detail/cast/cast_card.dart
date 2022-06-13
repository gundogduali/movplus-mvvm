import 'package:flutter/material.dart';

import '../../../../../data/core/api_constants.dart';
import '../../../../common/extensions/size_extensions.dart';
import '../../../../data/model/movie/cast_model.dart';
import '../../../theme/app_colors.dart';

class CastCard extends StatelessWidget {
  const CastCard({Key? key, required this.cast}) : super(key: key);
  final CastModel? cast;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 8.w),
          child: CircleAvatar(
            radius: 50.w,
            backgroundImage: cast?.profilePath == null
                ? null
                : NetworkImage(
                    '${ApiConstants.baseImageUrl}${cast?.profilePath}',
                  ),
          ),
        ),
        Text(
          cast?.name ?? '',
          overflow: TextOverflow.visible,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: AppColors.white),
        ),
        SizedBox(height: 4.w),
        Expanded(
          child: Text(
            'as ${cast?.character}',
            overflow: TextOverflow.visible,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: AppColors.santasGray,
                  fontSize: 12,
                ),
          ),
        ),
      ],
    );
  }
}
