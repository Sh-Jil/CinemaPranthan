import 'package:freezed_annotation/freezed_annotation.dart';

part 'posterimages.freezed.dart';
part 'posterimages.g.dart';

@freezed
class PosterModel with _$PosterModel {
  const factory PosterModel({
    @JsonKey(name: "file_path") required String filePath,
  }) = _PosterModel;

  factory PosterModel.fromJson(Map<String, dynamic> json) =>
      _$PosterModelFromJson(json);
}
