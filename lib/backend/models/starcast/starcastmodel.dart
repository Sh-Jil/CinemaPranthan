// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'starcastmodel.freezed.dart';
part 'starcastmodel.g.dart';

@freezed
class CastandCrew with _$CastandCrew {
  const factory CastandCrew({
    required List<Cast> cast,
    required List<Crew> crew,
  }) = _CastandCrew;
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    required int id,
    required String? name,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "profile_path") required String? profilePath,
    required String? character,
    @JsonKey(name: "credit_id") required String? creditId,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

@freezed
class Crew with _$Crew {
  const factory Crew({
    required int id,
    required String? name,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "profile_path") required String? profilePath,
    @JsonKey(name: "credit_id") required String? creditId,
    @JsonKey(name: "job") required String? character,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}
