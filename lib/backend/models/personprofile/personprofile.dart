// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'personprofile.freezed.dart';
part 'personprofile.g.dart';

@freezed
class PersonDetail with _$PersonDetail {
  const factory PersonDetail({
    required bool adult,
    @JsonKey(name: "also_known_as") required List<String> alsoKnownAs,
    required String biography,
    required DateTime? birthday,
    required DateTime? deathday,
    required int gender,
    required dynamic homepage,
    required int id,
    @JsonKey(name: "imdb_id") required String imdbId,
    @JsonKey(name: "known_for_department") required String knownForDepartment,
    required String name,
    @JsonKey(name: "place_of_birth") required String? placeOfBirth,
    @JsonKey(name: "profile_path") required String? profilePath,
  }) = _PersonDetail;

  factory PersonDetail.fromJson(Map<String, dynamic> json) =>
      _$PersonDetailFromJson(json);
}

@freezed
class PersonImage with _$PersonImage {
  const factory PersonImage({
    @JsonKey(name: "aspect_ratio") required double aspectRatio,
    required int height,
    @JsonKey(name: "file_path") required String filePath,
    required int width,
  }) = _PersonImage;

  factory PersonImage.fromJson(Map<String, dynamic> json) =>
      _$PersonImageFromJson(json);
}
