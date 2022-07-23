// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'moviedetail.freezed.dart';
part 'moviedetail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    @JsonKey(name: "adult") required bool? adult,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "budget") required int? budget,
    @JsonKey(name: "genres") required List<Genre>? genres,
    @JsonKey(name: "homepage") required String? homepage,
    @JsonKey(name: "id") required int? id,
    @JsonKey(name: "imdb_id") required String? imdbId,
    @JsonKey(name: "original_language") required String? originalLanguage,
    @JsonKey(name: "original_title") required String? originalTitle,
    required String? overview,
    required double? popularity,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "release_date") required String releaseDate,
    required int? revenue,
    required int? runtime,
    required String? status,
    required String? tagline,
    required String? title,
    required bool? video,
    @JsonKey(name: "vote_average") required double rating,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
