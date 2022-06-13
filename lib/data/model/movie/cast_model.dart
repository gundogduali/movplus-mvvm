import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_model.g.dart';
part 'cast_model.freezed.dart';

@freezed
class CastModel with _$CastModel {
  factory CastModel({
    required int id,
    required String name,
    required String character,
    @JsonKey(name: 'profile_path') required String? profilePath,
  }) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}
