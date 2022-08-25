// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CollectionModel _$$_CollectionModelFromJson(Map<String, dynamic> json) =>
    _$_CollectionModel(
      id: json['id'] as int,
      name: json['name'] as String,
      overview: json['overview'] as String,
      parts: (json['parts'] as List<dynamic>)
          .map((e) => Part.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CollectionModelToJson(_$_CollectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'parts': instance.parts,
    };

_$_Part _$$_PartFromJson(Map<String, dynamic> json) => _$_Part(
      id: json['id'] as int,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String,
      rating: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PartToJson(_$_Part instance) => <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'vote_average': instance.rating,
    };
