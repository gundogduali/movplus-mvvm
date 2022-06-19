import '../../../../gen/assets.gen.dart';

class GenreTab {
  final int id;
  final int index;
  final String title;
  final AssetGenImage image;

  const GenreTab({
    required this.id,
    required this.index,
    required this.title,
    required this.image,
  }) : assert(index >= 0, 'index cannot be negative');
}
