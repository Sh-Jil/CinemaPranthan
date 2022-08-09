// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personcredits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonCredit _$$_PersonCreditFromJson(Map<String, dynamic> json) =>
    _$_PersonCredit(
      cast: (json['cast'] as List<dynamic>)
          .map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>)
          .map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PersonCreditToJson(_$_PersonCredit instance) =>
    <String, dynamic>{
      'cast': instance.cast,
      'crew': instance.crew,
    };

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      character: json['character'] as String?,
      creditId: json['credit_id'] as String?,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'character': instance.character,
      'credit_id': instance.creditId,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'name': instance.name,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};

_$_Crew _$$_CrewFromJson(Map<String, dynamic> json) => _$_Crew(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      creditId: json['credit_id'] as String?,
      character: json['job'] as String?,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
    );

Map<String, dynamic> _$$_CrewToJson(_$_Crew instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'name': instance.name,
      'credit_id': instance.creditId,
      'job': instance.character,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
    };
