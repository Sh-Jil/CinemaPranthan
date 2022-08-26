// To parse this JSON data, do
//
//     final collectionModel = collectionModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    required int id,
    required String name,
    required String overview,
    required List<Part> parts,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}

@freezed
class Part with _$Part {
  const factory Part({
    required int id,
    @JsonKey(name: 'original_title') required String? originalTitle,
    @JsonKey(name: 'poster_path') required String? posterPath,
    required String title,
    @JsonKey(name: 'vote_average') required double rating,
  }) = _Part;

  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
}
