import 'package:flutter/material.dart';

import '../../../../common/extensions/size_extensions.dart';
import '../../../../data/model/movie/cast_model.dart';
import 'cast_card.dart';

class CastGridView extends StatelessWidget {
  const CastGridView({Key? key, required this.cast}) : super(key: key);
  final List<CastModel> cast;

  double sizeHeight() {
    return (cast.length / 2).round() * 48.h;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeHeight(),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.w,
          childAspectRatio: 0.7,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: cast.length,
        itemBuilder: (BuildContext context, int index) {
          return CastCard(cast: cast[index]);
        },
      ),
    );
  }
}
