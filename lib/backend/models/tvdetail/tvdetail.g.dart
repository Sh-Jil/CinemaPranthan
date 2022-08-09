// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvdetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvDetailsModel _$$_TvDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_TvDetailsModel(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      createdBy: json['created_by'] as List<dynamic>,
      episodeRunTime: (json['episode_run_time'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      firstAirDate: json['first_air_date'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      id: json['id'] as int,
      name: json['name'] as String?,
      nextEpisodeToAir: json['next_episode_to_air'],
      numberOfEpisodes: json['number_of_episodes'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      type: json['type'] as String?,
      rating: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TvDetailsModelToJson(_$_TvDetailsModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'created_by': instance.createdBy,
      'episode_run_time': instance.episodeRunTime,
      'first_air_date': instance.firstAirDate,
      'genres': instance.genres,
      'id': instance.id,
      'name': instance.name,
      'next_episode_to_air': instance.nextEpisodeToAir,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'seasons': instance.seasons,
      'status': instance.status,
      'tagline': instance.tagline,
      'type': instance.type,
      'vote_average': instance.rating,
    };

_$_Season _$$_SeasonFromJson(Map<String, dynamic> json) => _$_Season(
      airDate: json['air_date'] == null
          ? null
          : DateTime.parse(json['air_date'] as String),
      episodeCount: json['episode_count'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int,
    );

Map<String, dynamic> _$$_SeasonToJson(_$_Season instance) => <String, dynamic>{
      'air_date': instance.airDate?.toIso8601String(),
      'episode_count': instance.episodeCount,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
    };
