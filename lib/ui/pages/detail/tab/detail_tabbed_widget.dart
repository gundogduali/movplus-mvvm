import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../theme/app_colors.dart';
import '../../../viewmodels/movies_detail_view_model.dart';
import '../cast/cast_widget.dart';
import '../video/movie_videos.dart';
import 'detail_tab_constants.dart';
import 'tab_title_widget.dart';

class DetailTabbedWidget extends ConsumerWidget {
  const DetailTabbedWidget(this.movieId, {Key? key}) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tabIndex = ref
        .watch(moviesDetailViewModelProvider.select((value) => value.tabIndex));

    var videos = ref.watch(futureVideoProvider(movieId));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Container(
            height: 14.h,
            decoration: BoxDecoration(
              color: AppColors.ebonyClay,
              borderRadius: BorderRadius.circular(4.w),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < DetailTabbedConstants.tabs.length; i++)
                  TabTitleWidget(
                    title: DetailTabbedConstants.tabs[i].title,
                    onTap: () {
                      ref.read(moviesDetailViewModelProvider).setTabIndex(i);
                    },
                    isSelected: tabIndex == DetailTabbedConstants.tabs[i].index,
                  )
              ],
            ),
          ),
          if (tabIndex == DetailTabbedConstants.tabs[0].index)
            CastWidget(movieId),
          if (tabIndex == DetailTabbedConstants.tabs[1].index)
            videos.when(
                data: (data) => (MovieVideos(videos: data)),
                error: (_, __) => const Text('Error'),
                loading: () => const CircularProgressIndicator()),
        ],
      ),
    );
  }
}
