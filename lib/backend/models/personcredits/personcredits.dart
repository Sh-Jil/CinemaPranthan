// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'personcredits.freezed.dart';
part 'personcredits.g.dart';

@freezed
class PersonCredit with _$PersonCredit {
  const factory PersonCredit({
    required List<Cast> cast,
    required List<Crew> crew,
  }) = _PersonCredit;

  factory PersonCredit.fromJson(Map<String, dynamic> json) =>
      _$PersonCreditFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    required int id,
    @JsonKey(name: "poster_path") required String? posterPath,
    required String? title,
    required String? character,
    @JsonKey(name: "credit_id") required String? creditId,
    @JsonKey(name: "media_type") required MediaType mediaType,
    required String? name,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

enum MediaType { movie, tv }

@freezed
class Crew with _$Crew {
  const factory Crew({
    required bool adult,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    required int id,
    @JsonKey(name: "poster_path") required String? posterPath,
    required String? title,
    required String? name,
    @JsonKey(name: "credit_id") required String? creditId,
    @JsonKey(name: "job") required String? character,
    @JsonKey(name: "media_type") required MediaType mediaType,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}
