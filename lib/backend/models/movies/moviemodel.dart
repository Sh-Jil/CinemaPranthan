// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target

import "package:freezed_annotation/freezed_annotation.dart";
part 'moviemodel.freezed.dart';
part 'moviemodel.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "adult") required bool isadult,
    @JsonKey(name: "genre_ids") required List<int>? genreid,
    @JsonKey(name: "id") required int? movieid,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "original_language") required String? language,
    @JsonKey(name: "overview") required String? overview,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "release_date") required String? releasedate,
    @JsonKey(name: "vote_average") required double? rating,
  }) = _TrendingMovie;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
