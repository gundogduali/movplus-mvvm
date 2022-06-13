import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../viewmodels/movies_detail_view_model.dart';
import 'cast_grid_view.dart';

class CastWidget extends ConsumerWidget {
  const CastWidget(this.movieId, {Key? key}) : super(key: key);
  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cast = ref.watch(futureCastProvider(movieId));
    return cast.when(
        data: (data) {
          if (data.isEmpty) {
            return const Center(
              child: Text('No cast found'),
            );
          } else {
            return CastGridView(cast: data);
          }
        },
        error: (_, __) => const Text('Error'),
        loading: () => const CircularProgressIndicator());
  }
}
