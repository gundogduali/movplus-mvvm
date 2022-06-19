import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconly/iconly.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../theme/app_colors.dart';
import '../../../viewmodels/search_view_model.dart';

class SearchFieldWidget extends ConsumerWidget {
  SearchFieldWidget({Key? key}) : super(key: key);
  late TextEditingController? _searchTextFieldController;
  late SearchPageViewModel _searchPageViewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _searchTextFieldController = TextEditingController();

    _searchPageViewModel = ref.watch(searchPageViewModelProvider.notifier);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.w),
      child: TextField(
        controller: _searchTextFieldController,
        onSubmitted: (_input) => _searchPageViewModel.updateTextSearch(_input),
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: AppColors.white,
              decoration: TextDecoration.none,
            ),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          suffixIcon: const Icon(IconlyLight.search, color: AppColors.white),
          hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: AppColors.tuna,
              ),
          isCollapsed: true,
          contentPadding: EdgeInsets.only(left: 16.w),
          hintText: 'Search Movie',
        ),
      ),
    );
  }
}
