// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'seasondetail.freezed.dart';
part 'seasondetail.g.dart';

@freezed
class SeasonDetailsModel with _$SeasonDetailsModel {
  const factory SeasonDetailsModel({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "air_date") required DateTime? airDate,
    required List<Episode>? episodes,
    required String name,
    required String overview,
    @JsonKey(name: "id") required int seasonDetailsModelId,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "season_number") required int seasonNumber,
  }) = _SeasonDetailsModel;

  factory SeasonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonDetailsModelFromJson(json);
}

@freezed
class Episode with _$Episode {
  const factory Episode({
    @JsonKey(name: "air_date") required DateTime? airDate,
    @JsonKey(name: "episode_number") required int episodeNumber,
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: "production_code") required String productionCode,
    required int? runtime,
    required int seasonNumber,
    @JsonKey(name: "show_id") required int showId,
    @JsonKey(name: "still_path") required String? stillPath,
    @JsonKey(name: "vote_average") required double rating,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
