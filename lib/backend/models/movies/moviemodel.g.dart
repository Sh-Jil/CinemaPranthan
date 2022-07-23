// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moviemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrendingMovie _$$_TrendingMovieFromJson(Map<String, dynamic> json) =>
    _$_TrendingMovie(
      backdropPath: json['backdrop_path'] as String?,
      isadult: json['adult'] as bool,
      genreid:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      movieid: json['id'] as int?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      language: json['original_language'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releasedate: json['release_date'] as String?,
      rating: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TrendingMovieToJson(_$_TrendingMovie instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'adult': instance.isadult,
      'genre_ids': instance.genreid,
      'id': instance.movieid,
      'title': instance.title,
      'name': instance.name,
      'original_language': instance.language,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releasedate,
      'vote_average': instance.rating,
    };
