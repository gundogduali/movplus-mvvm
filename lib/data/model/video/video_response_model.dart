import 'package:freezed_annotation/freezed_annotation.dart';

import 'video_model.dart';

part 'video_response_model.freezed.dart';
part 'video_response_model.g.dart';

@freezed
class VideoResponseModel with _$VideoResponseModel {
  factory VideoResponseModel({
    required int id,
    required List<VideoModel> results,
  }) = _VideoResponseModel;

  factory VideoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseModelFromJson(json);
}
