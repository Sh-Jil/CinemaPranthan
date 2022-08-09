// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tvdetail.freezed.dart';
part 'tvdetail.g.dart';

@freezed
class TvDetailsModel with _$TvDetailsModel {
  const factory TvDetailsModel({
    required bool adult,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "created_by") required List<dynamic> createdBy,
    @JsonKey(name: "episode_run_time") required List<int> episodeRunTime,
    @JsonKey(name: "first_air_date") required String firstAirDate,
    required List<Map> genres,
    /* required String? homepage, */
    required int id,
    /* @JsonKey(name: "in_production") required bool inProduction,
    required List<String> languages,
    @JsonKey(name: "last_air_date") required DateTime lastAirDate,
    @JsonKey(name: "last_episode_to_air") */
    /*    required LastEpisodeToAir lastEpisodeToAir, */
    required String? name,
    @JsonKey(name: "next_episode_to_air") required dynamic nextEpisodeToAir,
    @JsonKey(name: "number_of_episodes") required int? numberOfEpisodes,
    @JsonKey(name: "number_of_seasons") required int? numberOfSeasons,
    @JsonKey(name: "original_language") required String? originalLanguage,
    @JsonKey(name: "original_name") required String? originalName,
    required String? overview,
    @JsonKey(name: "poster_path") required String? posterPath,
    required List<Season> seasons,
    required String? status,
    required String? tagline,
    required String? type,
    @JsonKey(name: "vote_average") required double rating,
  }) = _TvDetailsModel;

  factory TvDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TvDetailsModelFromJson(json);
}

/* @freezed
class LastEpisodeToAir with _$LastEpisodeToAir {
  const factory LastEpisodeToAir({
    @JsonKey(name: "air_date") required DateTime airDate,
    @JsonKey(name: "episode_number") required int episodeNumber,
    required int id,
    required String name,
    required String overview,
    required String productionCode,
    required int runtime,
    @JsonKey(name: "season_number") required int seasonNumber,
    @JsonKey(name: "still_path") required String stillPath,
    @JsonKey(name: "vote_average") required double rating,
  }) = _LastEpisodeToAir;

  factory LastEpisodeToAir.fromJson(Map<String, dynamic> json) =>
      _$LastEpisodeToAirFromJson(json);
} */

@freezed
class Season with _$Season {
  const factory Season({
    @JsonKey(name: "air_date") required DateTime? airDate,
    @JsonKey(name: "episode_count") required int episodeCount,
    required int id,
    required String name,
    required String overview,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "season_number") required int seasonNumber,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
