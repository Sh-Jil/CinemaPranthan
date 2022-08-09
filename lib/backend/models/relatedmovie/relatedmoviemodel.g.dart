// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relatedmoviemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieRelatedModel _$$_MovieRelatedModelFromJson(Map<String, dynamic> json) =>
    _$_MovieRelatedModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
    );

Map<String, dynamic> _$$_MovieRelatedModelToJson(
        _$_MovieRelatedModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'total_pages': instance.totalPages,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int,
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
      rating: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'vote_average': instance.rating,
    };
