// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starcastmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      id: json['id'] as int,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      profilePath: json['profile_path'] as String?,
      character: json['character'] as String?,
      creditId: json['credit_id'] as String?,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
      'character': instance.character,
      'credit_id': instance.creditId,
    };

_$_Crew _$$_CrewFromJson(Map<String, dynamic> json) => _$_Crew(
      id: json['id'] as int,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      profilePath: json['profile_path'] as String?,
      creditId: json['credit_id'] as String?,
      character: json['job'] as String?,
    );

Map<String, dynamic> _$$_CrewToJson(_$_Crew instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
      'credit_id': instance.creditId,
      'job': instance.character,
    };
