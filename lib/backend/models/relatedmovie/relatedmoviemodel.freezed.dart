// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'relatedmoviemodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieRelatedModel _$MovieRelatedModelFromJson(Map<String, dynamic> json) {
  return _MovieRelatedModel.fromJson(json);
}

/// @nodoc
mixin _$MovieRelatedModel {
  List<Result> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieRelatedModelCopyWith<MovieRelatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieRelatedModelCopyWith<$Res> {
  factory $MovieRelatedModelCopyWith(
          MovieRelatedModel value, $Res Function(MovieRelatedModel) then) =
      _$MovieRelatedModelCopyWithImpl<$Res>;
  $Res call(
      {List<Result> results, @JsonKey(name: "total_pages") int totalPages});
}

/// @nodoc
class _$MovieRelatedModelCopyWithImpl<$Res>
    implements $MovieRelatedModelCopyWith<$Res> {
  _$MovieRelatedModelCopyWithImpl(this._value, this._then);

  final MovieRelatedModel _value;
  // ignore: unused_field
  final $Res Function(MovieRelatedModel) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieRelatedModelCopyWith<$Res>
    implements $MovieRelatedModelCopyWith<$Res> {
  factory _$$_MovieRelatedModelCopyWith(_$_MovieRelatedModel value,
          $Res Function(_$_MovieRelatedModel) then) =
      __$$_MovieRelatedModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Result> results, @JsonKey(name: "total_pages") int totalPages});
}

/// @nodoc
class __$$_MovieRelatedModelCopyWithImpl<$Res>
    extends _$MovieRelatedModelCopyWithImpl<$Res>
    implements _$$_MovieRelatedModelCopyWith<$Res> {
  __$$_MovieRelatedModelCopyWithImpl(
      _$_MovieRelatedModel _value, $Res Function(_$_MovieRelatedModel) _then)
      : super(_value, (v) => _then(v as _$_MovieRelatedModel));

  @override
  _$_MovieRelatedModel get _value => super._value as _$_MovieRelatedModel;

  @override
  $Res call({
    Object? results = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$_MovieRelatedModel(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieRelatedModel implements _MovieRelatedModel {
  _$_MovieRelatedModel(
      {required final List<Result> results,
      @JsonKey(name: "total_pages") required this.totalPages})
      : _results = results;

  factory _$_MovieRelatedModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieRelatedModelFromJson(json);

  final List<Result> _results;
  @override
  List<Result> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: "total_pages")
  final int totalPages;

  @override
  String toString() {
    return 'MovieRelatedModel(results: $results, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieRelatedModel &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(totalPages));

  @JsonKey(ignore: true)
  @override
  _$$_MovieRelatedModelCopyWith<_$_MovieRelatedModel> get copyWith =>
      __$$_MovieRelatedModelCopyWithImpl<_$_MovieRelatedModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieRelatedModelToJson(
      this,
    );
  }
}

abstract class _MovieRelatedModel implements MovieRelatedModel {
  factory _MovieRelatedModel(
          {required final List<Result> results,
          @JsonKey(name: "total_pages") required final int totalPages}) =
      _$_MovieRelatedModel;

  factory _MovieRelatedModel.fromJson(Map<String, dynamic> json) =
      _$_MovieRelatedModel.fromJson;

  @override
  List<Result> get results;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_MovieRelatedModelCopyWith<_$_MovieRelatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      int id,
      String title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double rating});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      int id,
      String title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double rating});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_Result(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
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
class _$_Result implements _Result {
  _$_Result(
      {required this.adult,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      required this.id,
      required this.title,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "vote_average") required this.rating});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "vote_average")
  final double rating;

  @override
  String toString() {
    return 'Result(adult: $adult, backdropPath: $backdropPath, id: $id, title: $title, posterPath: $posterPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result(
      {required final bool adult,
      @JsonKey(name: "backdrop_path") required final String? backdropPath,
      required final int id,
      required final String title,
      @JsonKey(name: "poster_path") required final String? posterPath,
      @JsonKey(name: "vote_average") required final double rating}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "vote_average")
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
