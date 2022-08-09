// To parse this JSON data, do
//
//     final movieRelatedModel = movieRelatedModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'relatedmoviemodel.freezed.dart';
part 'relatedmoviemodel.g.dart';

@freezed
class MovieRelatedModel with _$MovieRelatedModel {
  factory MovieRelatedModel({
    required List<Result> results,
    @JsonKey(name: "total_pages") required int totalPages,
  }) = _MovieRelatedModel;

  factory MovieRelatedModel.fromJson(Map<String, dynamic> json) =>
      _$MovieRelatedModelFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    required bool adult,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    required int id,
    required String title,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "vote_average") required double rating,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
