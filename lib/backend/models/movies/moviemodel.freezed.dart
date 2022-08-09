// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'moviemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _TrendingMovie.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "adult")
  bool get isadult => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int>? get genreid => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get movieid => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releasedate => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "adult") bool isadult,
      @JsonKey(name: "genre_ids") List<int>? genreid,
      @JsonKey(name: "id") int? movieid,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_language") String? language,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "release_date") String? releasedate,
      @JsonKey(name: "vote_average") double? rating});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? isadult = freezed,
    Object? genreid = freezed,
    Object? movieid = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? releasedate = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isadult: isadult == freezed
          ? _value.isadult
          : isadult // ignore: cast_nullable_to_non_nullable
              as bool,
      genreid: genreid == freezed
          ? _value.genreid
          : genreid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      movieid: movieid == freezed
          ? _value.movieid
          : movieid // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releasedate: releasedate == freezed
          ? _value.releasedate
          : releasedate // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_TrendingMovieCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_TrendingMovieCopyWith(
          _$_TrendingMovie value, $Res Function(_$_TrendingMovie) then) =
      __$$_TrendingMovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "adult") bool isadult,
      @JsonKey(name: "genre_ids") List<int>? genreid,
      @JsonKey(name: "id") int? movieid,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_language") String? language,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "release_date") String? releasedate,
      @JsonKey(name: "vote_average") double? rating});
}

/// @nodoc
class __$$_TrendingMovieCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res>
    implements _$$_TrendingMovieCopyWith<$Res> {
  __$$_TrendingMovieCopyWithImpl(
      _$_TrendingMovie _value, $Res Function(_$_TrendingMovie) _then)
      : super(_value, (v) => _then(v as _$_TrendingMovie));

  @override
  _$_TrendingMovie get _value => super._value as _$_TrendingMovie;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? isadult = freezed,
    Object? genreid = freezed,
    Object? movieid = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? releasedate = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_TrendingMovie(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isadult: isadult == freezed
          ? _value.isadult
          : isadult // ignore: cast_nullable_to_non_nullable
              as bool,
      genreid: genreid == freezed
          ? _value._genreid
          : genreid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      movieid: movieid == freezed
          ? _value.movieid
          : movieid // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releasedate: releasedate == freezed
          ? _value.releasedate
          : releasedate // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingMovie implements _TrendingMovie {
  const _$_TrendingMovie(
      {@JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "adult") required this.isadult,
      @JsonKey(name: "genre_ids") required final List<int>? genreid,
      @JsonKey(name: "id") required this.movieid,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "original_language") required this.language,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "release_date") required this.releasedate,
      @JsonKey(name: "vote_average") required this.rating})
      : _genreid = genreid;

  factory _$_TrendingMovie.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingMovieFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "adult")
  final bool isadult;
  final List<int>? _genreid;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreid {
    final value = _genreid;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "id")
  final int? movieid;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "original_language")
  final String? language;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "release_date")
  final String? releasedate;
  @override
  @JsonKey(name: "vote_average")
  final double? rating;

  @override
  String toString() {
    return 'MovieModel(backdropPath: $backdropPath, isadult: $isadult, genreid: $genreid, movieid: $movieid, title: $title, name: $name, language: $language, overview: $overview, posterPath: $posterPath, releasedate: $releasedate, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingMovie &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.isadult, isadult) &&
            const DeepCollectionEquality().equals(other._genreid, _genreid) &&
            const DeepCollectionEquality().equals(other.movieid, movieid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releasedate, releasedate) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(isadult),
      const DeepCollectionEquality().hash(_genreid),
      const DeepCollectionEquality().hash(movieid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releasedate),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_TrendingMovieCopyWith<_$_TrendingMovie> get copyWith =>
      __$$_TrendingMovieCopyWithImpl<_$_TrendingMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingMovieToJson(
      this,
    );
  }
}

abstract class _TrendingMovie implements MovieModel {
  const factory _TrendingMovie(
          {@JsonKey(name: "backdrop_path") required final String? backdropPath,
          @JsonKey(name: "adult") required final bool isadult,
          @JsonKey(name: "genre_ids") required final List<int>? genreid,
          @JsonKey(name: "id") required final int? movieid,
          @JsonKey(name: "title") required final String? title,
          @JsonKey(name: "name") required final String? name,
          @JsonKey(name: "original_language") required final String? language,
          @JsonKey(name: "overview") required final String? overview,
          @JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "release_date") required final String? releasedate,
          @JsonKey(name: "vote_average") required final double? rating}) =
      _$_TrendingMovie;

  factory _TrendingMovie.fromJson(Map<String, dynamic> json) =
      _$_TrendingMovie.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "adult")
  bool get isadult;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreid;
  @override
  @JsonKey(name: "id")
  int? get movieid;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "original_language")
  String? get language;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "release_date")
  String? get releasedate;
  @override
  @JsonKey(name: "vote_average")
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_TrendingMovieCopyWith<_$_TrendingMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
