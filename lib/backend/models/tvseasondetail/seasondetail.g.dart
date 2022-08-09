// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasondetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeasonDetailsModel _$$_SeasonDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SeasonDetailsModel(
      id: json['_id'] as String,
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      overview: json['overview'] as String,
      seasonDetailsModelId: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int,
    );

Map<String, dynamic> _$$_SeasonDetailsModelToJson(
        _$_SeasonDetailsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'air_date': instance.airDate?.toIso8601String(),
      'episodes': instance.episodes,
      'name': instance.name,
      'overview': instance.overview,
      'id': instance.seasonDetailsModelId,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
    };

_$_Episode _$$_EpisodeFromJson(Map<String, dynamic> json) => _$_Episode(
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodeNumber: json['episode_number'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      productionCode: json['production_code'] as String,
      runtime: json['runtime'] as int?,
      seasonNumber: json['seasonNumber'] as int,
      showId: json['show_id'] as int,
      stillPath: json['still_path'] as String?,
      rating: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_EpisodeToJson(_$_Episode instance) =>
    <String, dynamic>{
      'air_date': instance.airDate?.toIso8601String(),
      'episode_number': instance.episodeNumber,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'production_code': instance.productionCode,
      'runtime': instance.runtime,
      'seasonNumber': instance.seasonNumber,
      'show_id': instance.showId,
      'still_path': instance.stillPath,
      'vote_average': instance.rating,
    };
