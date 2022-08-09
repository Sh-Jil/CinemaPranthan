// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_related_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvRelatedModel _$TvRelatedModelFromJson(Map<String, dynamic> json) {
  return _TvRelatedModel.fromJson(json);
}

/// @nodoc
mixin _$TvRelatedModel {
  List<Result> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvRelatedModelCopyWith<TvRelatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvRelatedModelCopyWith<$Res> {
  factory $TvRelatedModelCopyWith(
          TvRelatedModel value, $Res Function(TvRelatedModel) then) =
      _$TvRelatedModelCopyWithImpl<$Res>;
  $Res call({List<Result> results, int totalPages});
}

/// @nodoc
class _$TvRelatedModelCopyWithImpl<$Res>
    implements $TvRelatedModelCopyWith<$Res> {
  _$TvRelatedModelCopyWithImpl(this._value, this._then);

  final TvRelatedModel _value;
  // ignore: unused_field
  final $Res Function(TvRelatedModel) _then;

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
abstract class _$$_TvRelatedModelCopyWith<$Res>
    implements $TvRelatedModelCopyWith<$Res> {
  factory _$$_TvRelatedModelCopyWith(
          _$_TvRelatedModel value, $Res Function(_$_TvRelatedModel) then) =
      __$$_TvRelatedModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Result> results, int totalPages});
}

/// @nodoc
class __$$_TvRelatedModelCopyWithImpl<$Res>
    extends _$TvRelatedModelCopyWithImpl<$Res>
    implements _$$_TvRelatedModelCopyWith<$Res> {
  __$$_TvRelatedModelCopyWithImpl(
      _$_TvRelatedModel _value, $Res Function(_$_TvRelatedModel) _then)
      : super(_value, (v) => _then(v as _$_TvRelatedModel));

  @override
  _$_TvRelatedModel get _value => super._value as _$_TvRelatedModel;

  @override
  $Res call({
    Object? results = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$_TvRelatedModel(
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
class _$_TvRelatedModel implements _TvRelatedModel {
  const _$_TvRelatedModel(
      {required final List<Result> results, required this.totalPages})
      : _results = results;

  factory _$_TvRelatedModel.fromJson(Map<String, dynamic> json) =>
      _$$_TvRelatedModelFromJson(json);

  final List<Result> _results;
  @override
  List<Result> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalPages;

  @override
  String toString() {
    return 'TvRelatedModel(results: $results, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvRelatedModel &&
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
  _$$_TvRelatedModelCopyWith<_$_TvRelatedModel> get copyWith =>
      __$$_TvRelatedModelCopyWithImpl<_$_TvRelatedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvRelatedModelToJson(
      this,
    );
  }
}

abstract class _TvRelatedModel implements TvRelatedModel {
  const factory _TvRelatedModel(
      {required final List<Result> results,
      required final int totalPages}) = _$_TvRelatedModel;

  factory _TvRelatedModel.fromJson(Map<String, dynamic> json) =
      _$_TvRelatedModel.fromJson;

  @override
  List<Result> get results;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_TvRelatedModelCopyWith<_$_TvRelatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
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
      {int id,
      String name,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? rating = freezed,
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
      {int id,
      String name,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? posterPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_Result(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  const _$_Result(
      {required this.id,
      required this.name,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "vote_average") required this.rating});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "vote_average")
  final double rating;

  @override
  String toString() {
    return 'Result(id: $id, name: $name, posterPath: $posterPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
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
  const factory _Result(
      {required final int id,
      required final String name,
      @JsonKey(name: "poster_path") required final String? posterPath,
      @JsonKey(name: "vote_average") required final double rating}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int get id;
  @override
  String get name;
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
