// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seasondetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeasonDetailsModel _$SeasonDetailsModelFromJson(Map<String, dynamic> json) {
  return _SeasonDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$SeasonDetailsModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "air_date")
  DateTime? get airDate => throw _privateConstructorUsedError;
  List<Episode>? get episodes => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get seasonDetailsModelId => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "season_number")
  int? get seasonNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonDetailsModelCopyWith<SeasonDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonDetailsModelCopyWith<$Res> {
  factory $SeasonDetailsModelCopyWith(
          SeasonDetailsModel value, $Res Function(SeasonDetailsModel) then) =
      _$SeasonDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "air_date") DateTime? airDate,
      List<Episode>? episodes,
      String name,
      String overview,
      @JsonKey(name: "id") int? seasonDetailsModelId,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "season_number") int? seasonNumber});
}

/// @nodoc
class _$SeasonDetailsModelCopyWithImpl<$Res>
    implements $SeasonDetailsModelCopyWith<$Res> {
  _$SeasonDetailsModelCopyWithImpl(this._value, this._then);

  final SeasonDetailsModel _value;
  // ignore: unused_field
  final $Res Function(SeasonDetailsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? airDate = freezed,
    Object? episodes = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? seasonDetailsModelId = freezed,
    Object? posterPath = freezed,
    Object? seasonNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      seasonDetailsModelId: seasonDetailsModelId == freezed
          ? _value.seasonDetailsModelId
          : seasonDetailsModelId // ignore: cast_nullable_to_non_nullable
              as int?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonNumber: seasonNumber == freezed
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SeasonDetailsModelCopyWith<$Res>
    implements $SeasonDetailsModelCopyWith<$Res> {
  factory _$$_SeasonDetailsModelCopyWith(_$_SeasonDetailsModel value,
          $Res Function(_$_SeasonDetailsModel) then) =
      __$$_SeasonDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "air_date") DateTime? airDate,
      List<Episode>? episodes,
      String name,
      String overview,
      @JsonKey(name: "id") int? seasonDetailsModelId,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "season_number") int? seasonNumber});
}

/// @nodoc
class __$$_SeasonDetailsModelCopyWithImpl<$Res>
    extends _$SeasonDetailsModelCopyWithImpl<$Res>
    implements _$$_SeasonDetailsModelCopyWith<$Res> {
  __$$_SeasonDetailsModelCopyWithImpl(
      _$_SeasonDetailsModel _value, $Res Function(_$_SeasonDetailsModel) _then)
      : super(_value, (v) => _then(v as _$_SeasonDetailsModel));

  @override
  _$_SeasonDetailsModel get _value => super._value as _$_SeasonDetailsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? airDate = freezed,
    Object? episodes = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? seasonDetailsModelId = freezed,
    Object? posterPath = freezed,
    Object? seasonNumber = freezed,
  }) {
    return _then(_$_SeasonDetailsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodes: episodes == freezed
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      seasonDetailsModelId: seasonDetailsModelId == freezed
          ? _value.seasonDetailsModelId
          : seasonDetailsModelId // ignore: cast_nullable_to_non_nullable
              as int?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonNumber: seasonNumber == freezed
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonDetailsModel implements _SeasonDetailsModel {
  const _$_SeasonDetailsModel(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "air_date") required this.airDate,
      required final List<Episode>? episodes,
      required this.name,
      required this.overview,
      @JsonKey(name: "id") required this.seasonDetailsModelId,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "season_number") required this.seasonNumber})
      : _episodes = episodes;

  factory _$_SeasonDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonDetailsModelFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "air_date")
  final DateTime? airDate;
  final List<Episode>? _episodes;
  @override
  List<Episode>? get episodes {
    final value = _episodes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String name;
  @override
  final String overview;
  @override
  @JsonKey(name: "id")
  final int? seasonDetailsModelId;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "season_number")
  final int? seasonNumber;

  @override
  String toString() {
    return 'SeasonDetailsModel(id: $id, airDate: $airDate, episodes: $episodes, name: $name, overview: $overview, seasonDetailsModelId: $seasonDetailsModelId, posterPath: $posterPath, seasonNumber: $seasonNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeasonDetailsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.airDate, airDate) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.seasonDetailsModelId, seasonDetailsModelId) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.seasonNumber, seasonNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(airDate),
      const DeepCollectionEquality().hash(_episodes),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(seasonDetailsModelId),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(seasonNumber));

  @JsonKey(ignore: true)
  @override
  _$$_SeasonDetailsModelCopyWith<_$_SeasonDetailsModel> get copyWith =>
      __$$_SeasonDetailsModelCopyWithImpl<_$_SeasonDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonDetailsModelToJson(
      this,
    );
  }
}

abstract class _SeasonDetailsModel implements SeasonDetailsModel {
  const factory _SeasonDetailsModel(
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "air_date") required final DateTime? airDate,
          required final List<Episode>? episodes,
          required final String name,
          required final String overview,
          @JsonKey(name: "id") required final int? seasonDetailsModelId,
          @JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "season_number") required final int? seasonNumber}) =
      _$_SeasonDetailsModel;

  factory _SeasonDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_SeasonDetailsModel.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "air_date")
  DateTime? get airDate;
  @override
  List<Episode>? get episodes;
  @override
  String get name;
  @override
  String get overview;
  @override
  @JsonKey(name: "id")
  int? get seasonDetailsModelId;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "season_number")
  int? get seasonNumber;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonDetailsModelCopyWith<_$_SeasonDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  @JsonKey(name: "air_date")
  DateTime? get airDate => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_number")
  int? get episodeNumber => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "production_code")
  String get productionCode => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  int? get seasonNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "show_id")
  int? get showId => throw _privateConstructorUsedError;
  @JsonKey(name: "still_path")
  String? get stillPath => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "air_date") DateTime? airDate,
      @JsonKey(name: "episode_number") int? episodeNumber,
      int? id,
      String name,
      String overview,
      @JsonKey(name: "production_code") String productionCode,
      int? runtime,
      int? seasonNumber,
      @JsonKey(name: "show_id") int? showId,
      @JsonKey(name: "still_path") String? stillPath,
      @JsonKey(name: "vote_average") double rating});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? airDate = freezed,
    Object? episodeNumber = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? productionCode = freezed,
    Object? runtime = freezed,
    Object? seasonNumber = freezed,
    Object? showId = freezed,
    Object? stillPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      productionCode: productionCode == freezed
          ? _value.productionCode
          : productionCode // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonNumber: seasonNumber == freezed
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      showId: showId == freezed
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as int?,
      stillPath: stillPath == freezed
          ? _value.stillPath
          : stillPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$_EpisodeCopyWith(
          _$_Episode value, $Res Function(_$_Episode) then) =
      __$$_EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "air_date") DateTime? airDate,
      @JsonKey(name: "episode_number") int? episodeNumber,
      int? id,
      String name,
      String overview,
      @JsonKey(name: "production_code") String productionCode,
      int? runtime,
      int? seasonNumber,
      @JsonKey(name: "show_id") int? showId,
      @JsonKey(name: "still_path") String? stillPath,
      @JsonKey(name: "vote_average") double rating});
}

/// @nodoc
class __$$_EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$$_EpisodeCopyWith<$Res> {
  __$$_EpisodeCopyWithImpl(_$_Episode _value, $Res Function(_$_Episode) _then)
      : super(_value, (v) => _then(v as _$_Episode));

  @override
  _$_Episode get _value => super._value as _$_Episode;

  @override
  $Res call({
    Object? airDate = freezed,
    Object? episodeNumber = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? productionCode = freezed,
    Object? runtime = freezed,
    Object? seasonNumber = freezed,
    Object? showId = freezed,
    Object? stillPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_Episode(
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      productionCode: productionCode == freezed
          ? _value.productionCode
          : productionCode // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonNumber: seasonNumber == freezed
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      showId: showId == freezed
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as int?,
      stillPath: stillPath == freezed
          ? _value.stillPath
          : stillPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode implements _Episode {
  const _$_Episode(
      {@JsonKey(name: "air_date") required this.airDate,
      @JsonKey(name: "episode_number") required this.episodeNumber,
      required this.id,
      required this.name,
      required this.overview,
      @JsonKey(name: "production_code") required this.productionCode,
      required this.runtime,
      required this.seasonNumber,
      @JsonKey(name: "show_id") required this.showId,
      @JsonKey(name: "still_path") required this.stillPath,
      @JsonKey(name: "vote_average") required this.rating});

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeFromJson(json);

  @override
  @JsonKey(name: "air_date")
  final DateTime? airDate;
  @override
  @JsonKey(name: "episode_number")
  final int? episodeNumber;
  @override
  final int? id;
  @override
  final String name;
  @override
  final String overview;
  @override
  @JsonKey(name: "production_code")
  final String productionCode;
  @override
  final int? runtime;
  @override
  final int? seasonNumber;
  @override
  @JsonKey(name: "show_id")
  final int? showId;
  @override
  @JsonKey(name: "still_path")
  final String? stillPath;
  @override
  @JsonKey(name: "vote_average")
  final double rating;

  @override
  String toString() {
    return 'Episode(airDate: $airDate, episodeNumber: $episodeNumber, id: $id, name: $name, overview: $overview, productionCode: $productionCode, runtime: $runtime, seasonNumber: $seasonNumber, showId: $showId, stillPath: $stillPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Episode &&
            const DeepCollectionEquality().equals(other.airDate, airDate) &&
            const DeepCollectionEquality()
                .equals(other.episodeNumber, episodeNumber) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.productionCode, productionCode) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality()
                .equals(other.seasonNumber, seasonNumber) &&
            const DeepCollectionEquality().equals(other.showId, showId) &&
            const DeepCollectionEquality().equals(other.stillPath, stillPath) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(airDate),
      const DeepCollectionEquality().hash(episodeNumber),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(productionCode),
      const DeepCollectionEquality().hash(runtime),
      const DeepCollectionEquality().hash(seasonNumber),
      const DeepCollectionEquality().hash(showId),
      const DeepCollectionEquality().hash(stillPath),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_EpisodeCopyWith<_$_Episode> get copyWith =>
      __$$_EpisodeCopyWithImpl<_$_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {@JsonKey(name: "air_date")
          required final DateTime? airDate,
      @JsonKey(name: "episode_number")
          required final int? episodeNumber,
      required final int? id,
      required final String name,
      required final String overview,
      @JsonKey(name: "production_code")
          required final String productionCode,
      required final int? runtime,
      required final int? seasonNumber,
      @JsonKey(name: "show_id")
          required final int? showId,
      @JsonKey(name: "still_path")
          required final String? stillPath,
      @JsonKey(name: "vote_average")
          required final double rating}) = _$_Episode;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  @JsonKey(name: "air_date")
  DateTime? get airDate;
  @override
  @JsonKey(name: "episode_number")
  int? get episodeNumber;
  @override
  int? get id;
  @override
  String get name;
  @override
  String get overview;
  @override
  @JsonKey(name: "production_code")
  String get productionCode;
  @override
  int? get runtime;
  @override
  int? get seasonNumber;
  @override
  @JsonKey(name: "show_id")
  int? get showId;
  @override
  @JsonKey(name: "still_path")
  String? get stillPath;
  @override
  @JsonKey(name: "vote_average")
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeCopyWith<_$_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}
