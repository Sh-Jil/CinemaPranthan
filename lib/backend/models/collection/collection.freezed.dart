// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) {
  return _CollectionModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  List<Part> get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionModelCopyWith<CollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionModelCopyWith<$Res> {
  factory $CollectionModelCopyWith(
          CollectionModel value, $Res Function(CollectionModel) then) =
      _$CollectionModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String overview, List<Part> parts});
}

/// @nodoc
class _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._value, this._then);

  final CollectionModel _value;
  // ignore: unused_field
  final $Res Function(CollectionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? parts = freezed,
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
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      parts: parts == freezed
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<Part>,
    ));
  }
}

/// @nodoc
abstract class _$$_CollectionModelCopyWith<$Res>
    implements $CollectionModelCopyWith<$Res> {
  factory _$$_CollectionModelCopyWith(
          _$_CollectionModel value, $Res Function(_$_CollectionModel) then) =
      __$$_CollectionModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String overview, List<Part> parts});
}

/// @nodoc
class __$$_CollectionModelCopyWithImpl<$Res>
    extends _$CollectionModelCopyWithImpl<$Res>
    implements _$$_CollectionModelCopyWith<$Res> {
  __$$_CollectionModelCopyWithImpl(
      _$_CollectionModel _value, $Res Function(_$_CollectionModel) _then)
      : super(_value, (v) => _then(v as _$_CollectionModel));

  @override
  _$_CollectionModel get _value => super._value as _$_CollectionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? parts = freezed,
  }) {
    return _then(_$_CollectionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      parts: parts == freezed
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<Part>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionModel implements _CollectionModel {
  const _$_CollectionModel(
      {required this.id,
      required this.name,
      required this.overview,
      required final List<Part> parts})
      : _parts = parts;

  factory _$_CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String overview;
  final List<Part> _parts;
  @override
  List<Part> get parts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'CollectionModel(id: $id, name: $name, overview: $overview, parts: $parts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  _$$_CollectionModelCopyWith<_$_CollectionModel> get copyWith =>
      __$$_CollectionModelCopyWithImpl<_$_CollectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionModelToJson(
      this,
    );
  }
}

abstract class _CollectionModel implements CollectionModel {
  const factory _CollectionModel(
      {required final int id,
      required final String name,
      required final String overview,
      required final List<Part> parts}) = _$_CollectionModel;

  factory _CollectionModel.fromJson(Map<String, dynamic> json) =
      _$_CollectionModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get overview;
  @override
  List<Part> get parts;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionModelCopyWith<_$_CollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Part _$PartFromJson(Map<String, dynamic> json) {
  return _Part.fromJson(json);
}

/// @nodoc
mixin _$Part {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartCopyWith<Part> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartCopyWith<$Res> {
  factory $PartCopyWith(Part value, $Res Function(Part) then) =
      _$PartCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'poster_path') String? posterPath,
      String title,
      @JsonKey(name: 'vote_average') double rating});
}

/// @nodoc
class _$PartCopyWithImpl<$Res> implements $PartCopyWith<$Res> {
  _$PartCopyWithImpl(this._value, this._then);

  final Part _value;
  // ignore: unused_field
  final $Res Function(Part) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PartCopyWith<$Res> implements $PartCopyWith<$Res> {
  factory _$$_PartCopyWith(_$_Part value, $Res Function(_$_Part) then) =
      __$$_PartCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'poster_path') String? posterPath,
      String title,
      @JsonKey(name: 'vote_average') double rating});
}

/// @nodoc
class __$$_PartCopyWithImpl<$Res> extends _$PartCopyWithImpl<$Res>
    implements _$$_PartCopyWith<$Res> {
  __$$_PartCopyWithImpl(_$_Part _value, $Res Function(_$_Part) _then)
      : super(_value, (v) => _then(v as _$_Part));

  @override
  _$_Part get _value => super._value as _$_Part;

  @override
  $Res call({
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_Part(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Part implements _Part {
  const _$_Part(
      {required this.id,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'poster_path') required this.posterPath,
      required this.title,
      @JsonKey(name: 'vote_average') required this.rating});

  factory _$_Part.fromJson(Map<String, dynamic> json) => _$$_PartFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double rating;

  @override
  String toString() {
    return 'Part(id: $id, originalTitle: $originalTitle, posterPath: $posterPath, title: $title, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Part &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_PartCopyWith<_$_Part> get copyWith =>
      __$$_PartCopyWithImpl<_$_Part>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartToJson(
      this,
    );
  }
}

abstract class _Part implements Part {
  const factory _Part(
      {required final int id,
      @JsonKey(name: 'original_title') required final String? originalTitle,
      @JsonKey(name: 'poster_path') required final String? posterPath,
      required final String title,
      @JsonKey(name: 'vote_average') required final double rating}) = _$_Part;

  factory _Part.fromJson(Map<String, dynamic> json) = _$_Part.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_PartCopyWith<_$_Part> get copyWith => throw _privateConstructorUsedError;
}
