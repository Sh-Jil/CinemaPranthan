// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tvmodel.freezed.dart';
part 'tvmodel.g.dart';

@freezed
class TvModel with _$TvModel {
  const factory TvModel({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "first_air_date") required String? firstAirDate,
    @JsonKey(name: "genre_ids") required List<int>? genreIds,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "origin_country") required List<String>? originCountry,
    @JsonKey(name: "original_language") required String? originalLanguage,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "overview") required String? overview,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "vote_average") required double? rating,
  }) = _TvModel;

  factory TvModel.fromJson(Map<String, dynamic> json) =>
      _$TvModelFromJson(json);
}
