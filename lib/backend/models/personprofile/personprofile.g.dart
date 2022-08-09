// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personprofile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonDetail _$$_PersonDetailFromJson(Map<String, dynamic> json) =>
    _$_PersonDetail(
      adult: json['adult'] as bool,
      alsoKnownAs: (json['also_known_as'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      biography: json['biography'] as String,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      deathday: json['deathday'] == null
          ? null
          : DateTime.parse(json['deathday'] as String),
      gender: json['gender'] as int,
      homepage: json['homepage'],
      id: json['id'] as int,
      imdbId: json['imdb_id'] as String,
      knownForDepartment: json['known_for_department'] as String,
      name: json['name'] as String,
      placeOfBirth: json['place_of_birth'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$_PersonDetailToJson(_$_PersonDetail instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'also_known_as': instance.alsoKnownAs,
      'biography': instance.biography,
      'birthday': instance.birthday?.toIso8601String(),
      'deathday': instance.deathday?.toIso8601String(),
      'gender': instance.gender,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
      'place_of_birth': instance.placeOfBirth,
      'profile_path': instance.profilePath,
    };

_$_PersonImage _$$_PersonImageFromJson(Map<String, dynamic> json) =>
    _$_PersonImage(
      aspectRatio: (json['aspect_ratio'] as num).toDouble(),
      height: json['height'] as int,
      filePath: json['file_path'] as String,
      width: json['width'] as int,
    );

Map<String, dynamic> _$$_PersonImageToJson(_$_PersonImage instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'file_path': instance.filePath,
      'width': instance.width,
    };
