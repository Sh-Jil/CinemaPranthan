// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_related_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvRelatedModel _$$_TvRelatedModelFromJson(Map<String, dynamic> json) =>
    _$_TvRelatedModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int,
    );

Map<String, dynamic> _$$_TvRelatedModelToJson(_$_TvRelatedModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'totalPages': instance.totalPages,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int,
      name: json['name'] as String,
      posterPath: json['poster_path'] as String?,
      rating: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
      'vote_average': instance.rating,
    };
