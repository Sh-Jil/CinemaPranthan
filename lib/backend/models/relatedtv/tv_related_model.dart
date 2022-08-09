// To parse this JSON data, do
//
//     final tvRelatedModel = tvRelatedModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_related_model.freezed.dart';
part 'tv_related_model.g.dart';

@freezed
class TvRelatedModel with _$TvRelatedModel {
  const factory TvRelatedModel({
    required List<Result> results,
    required int totalPages,
  }) = _TvRelatedModel;

  factory TvRelatedModel.fromJson(Map<String, dynamic> json) =>
      _$TvRelatedModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required int id,
    required String name,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "vote_average") required double rating,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
