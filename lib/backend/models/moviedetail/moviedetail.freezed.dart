// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'moviedetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
class _$MovieDetailTearOff {
  const _$MovieDetailTearOff();

  _MovieDetail call(
      {@JsonKey(name: "adult") required bool? adult,
      @JsonKey(name: "backdrop_path") required String? backdropPath,
      @JsonKey(name: "budget") required int? budget,
      @JsonKey(name: "genres") required List<Genre>? genres,
      @JsonKey(name: "homepage") required String? homepage,
      @JsonKey(name: "id") required int? id,
      @JsonKey(name: "imdb_id") required String? imdbId,
      @JsonKey(name: "original_language") required String? originalLanguage,
      @JsonKey(name: "original_title") required String? originalTitle,
      required String? overview,
      required double? popularity,
      @JsonKey(name: "poster_path") required String? posterPath,
      @JsonKey(name: "release_date") required String releaseDate,
      required int? revenue,
      required int? runtime,
      required String? status,
      required String? tagline,
      required String? title,
      required bool? video,
      @JsonKey(name: "vote_average") required double rating}) {
    return _MovieDetail(
      adult: adult,
      backdropPath: backdropPath,
      budget: budget,
      genres: genres,
      homepage: homepage,
      id: id,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      status: status,
      tagline: tagline,
      title: title,
      video: video,
      rating: rating,
    );
  }

  MovieDetail fromJson(Map<String, Object?> json) {
    return MovieDetail.fromJson(json);
  }
}

/// @nodoc
const $MovieDetail = _$MovieDetailTearOff();

/// @nodoc
mixin _$MovieDetail {
  @JsonKey(name: "adult")
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "budget")
  int? get budget => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<Genre>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "homepage")
  String? get homepage => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "imdb_id")
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "budget") int? budget,
      @JsonKey(name: "genres") List<Genre>? genres,
      @JsonKey(name: "homepage") String? homepage,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "imdb_id") String? imdbId,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "original_title") String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      int? revenue,
      int? runtime,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: "vote_average") double rating});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(
          _MovieDetail value, $Res Function(_MovieDetail) then) =
      __$MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "adult") bool? adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "budget") int? budget,
      @JsonKey(name: "genres") List<Genre>? genres,
      @JsonKey(name: "homepage") String? homepage,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "imdb_id") String? imdbId,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "original_title") String? originalTitle,
      String? overview,
      double? popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      int? revenue,
      int? runtime,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      @JsonKey(name: "vote_average") double rating});
}

/// @nodoc
class __$MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(
      _MovieDetail _value, $Res Function(_MovieDetail) _then)
      : super(_value, (v) => _then(v as _MovieDetail));

  @override
  _MovieDetail get _value => super._value as _MovieDetail;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? rating = freezed,
  }) {
    return _then(_MovieDetail(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail implements _MovieDetail {
  const _$_MovieDetail(
      {@JsonKey(name: "adult") required this.adult,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "budget") required this.budget,
      @JsonKey(name: "genres") required this.genres,
      @JsonKey(name: "homepage") required this.homepage,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "imdb_id") required this.imdbId,
      @JsonKey(name: "original_language") required this.originalLanguage,
      @JsonKey(name: "original_title") required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "release_date") required this.releaseDate,
      required this.revenue,
      required this.runtime,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      @JsonKey(name: "vote_average") required this.rating});

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailFromJson(json);

  @override
  @JsonKey(name: "adult")
  final bool? adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "budget")
  final int? budget;
  @override
  @JsonKey(name: "genres")
  final List<Genre>? genres;
  @override
  @JsonKey(name: "homepage")
  final String? homepage;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "imdb_id")
  final String? imdbId;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  final int? revenue;
  @override
  final int? runtime;
  @override
  final String? status;
  @override
  final String? tagline;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  @JsonKey(name: "vote_average")
  final double rating;

  @override
  String toString() {
    return 'MovieDetail(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetail &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.budget, budget) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imdbId, imdbId) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(adult),
        const DeepCollectionEquality().hash(backdropPath),
        const DeepCollectionEquality().hash(budget),
        const DeepCollectionEquality().hash(genres),
        const DeepCollectionEquality().hash(homepage),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(imdbId),
        const DeepCollectionEquality().hash(originalLanguage),
        const DeepCollectionEquality().hash(originalTitle),
        const DeepCollectionEquality().hash(overview),
        const DeepCollectionEquality().hash(popularity),
        const DeepCollectionEquality().hash(posterPath),
        const DeepCollectionEquality().hash(releaseDate),
        const DeepCollectionEquality().hash(revenue),
        const DeepCollectionEquality().hash(runtime),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(tagline),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(rating)
      ]);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailToJson(this);
  }
}

abstract class _MovieDetail implements MovieDetail {
  const factory _MovieDetail(
      {@JsonKey(name: "adult") required bool? adult,
      @JsonKey(name: "backdrop_path") required String? backdropPath,
      @JsonKey(name: "budget") required int? budget,
      @JsonKey(name: "genres") required List<Genre>? genres,
      @JsonKey(name: "homepage") required String? homepage,
      @JsonKey(name: "id") required int? id,
      @JsonKey(name: "imdb_id") required String? imdbId,
      @JsonKey(name: "original_language") required String? originalLanguage,
      @JsonKey(name: "original_title") required String? originalTitle,
      required String? overview,
      required double? popularity,
      @JsonKey(name: "poster_path") required String? posterPath,
      @JsonKey(name: "release_date") required String releaseDate,
      required int? revenue,
      required int? runtime,
      required String? status,
      required String? tagline,
      required String? title,
      required bool? video,
      @JsonKey(name: "vote_average") required double rating}) = _$_MovieDetail;

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  @JsonKey(name: "adult")
  bool? get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "budget")
  int? get budget;
  @override
  @JsonKey(name: "genres")
  List<Genre>? get genres;
  @override
  @JsonKey(name: "homepage")
  String? get homepage;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "imdb_id")
  String? get imdbId;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  int? get revenue;
  @override
  int? get runtime;
  @override
  String? get status;
  @override
  String? get tagline;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  @JsonKey(name: "vote_average")
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
class _$GenreTearOff {
  const _$GenreTearOff();

  _Genre call({required int id, required String name}) {
    return _Genre(
      id: id,
      name: name,
    );
  }

  Genre fromJson(Map<String, Object?> json) {
    return Genre.fromJson(json);
  }
}

/// @nodoc
const $Genre = _$GenreTearOff();

/// @nodoc
mixin _$Genre {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res> implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  final Genre _value;
  // ignore: unused_field
  final $Res Function(Genre) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$GenreCopyWith(_Genre value, $Res Function(_Genre) then) =
      __$GenreCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$GenreCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res>
    implements _$GenreCopyWith<$Res> {
  __$GenreCopyWithImpl(_Genre _value, $Res Function(_Genre) _then)
      : super(_value, (v) => _then(v as _Genre));

  @override
  _Genre get _value => super._value as _Genre;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Genre(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genre implements _Genre {
  const _$_Genre({required this.id, required this.name});

  factory _$_Genre.fromJson(Map<String, dynamic> json) =>
      _$$_GenreFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Genre(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Genre &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenreCopyWith<_Genre> get copyWith =>
      __$GenreCopyWithImpl<_Genre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreToJson(this);
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({required int id, required String name}) = _$_Genre;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$_Genre.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenreCopyWith<_Genre> get copyWith => throw _privateConstructorUsedError;
}
