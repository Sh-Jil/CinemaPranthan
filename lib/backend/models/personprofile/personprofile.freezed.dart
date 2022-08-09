// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personprofile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonDetail _$PersonDetailFromJson(Map<String, dynamic> json) {
  return _PersonDetail.fromJson(json);
}

/// @nodoc
mixin _$PersonDetail {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "also_known_as")
  List<String> get alsoKnownAs => throw _privateConstructorUsedError;
  String get biography => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  DateTime? get deathday => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  dynamic get homepage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "imdb_id")
  String get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "known_for_department")
  String get knownForDepartment => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "place_of_birth")
  String? get placeOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDetailCopyWith<PersonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailCopyWith<$Res> {
  factory $PersonDetailCopyWith(
          PersonDetail value, $Res Function(PersonDetail) then) =
      _$PersonDetailCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: "also_known_as") List<String> alsoKnownAs,
      String biography,
      DateTime? birthday,
      DateTime? deathday,
      int gender,
      dynamic homepage,
      int id,
      @JsonKey(name: "imdb_id") String imdbId,
      @JsonKey(name: "known_for_department") String knownForDepartment,
      String name,
      @JsonKey(name: "place_of_birth") String? placeOfBirth,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class _$PersonDetailCopyWithImpl<$Res> implements $PersonDetailCopyWith<$Res> {
  _$PersonDetailCopyWithImpl(this._value, this._then);

  final PersonDetail _value;
  // ignore: unused_field
  final $Res Function(PersonDetail) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? alsoKnownAs = freezed,
    Object? biography = freezed,
    Object? birthday = freezed,
    Object? deathday = freezed,
    Object? gender = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? placeOfBirth = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      alsoKnownAs: alsoKnownAs == freezed
          ? _value.alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biography: biography == freezed
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deathday: deathday == freezed
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: placeOfBirth == freezed
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonDetailCopyWith<$Res>
    implements $PersonDetailCopyWith<$Res> {
  factory _$$_PersonDetailCopyWith(
          _$_PersonDetail value, $Res Function(_$_PersonDetail) then) =
      __$$_PersonDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: "also_known_as") List<String> alsoKnownAs,
      String biography,
      DateTime? birthday,
      DateTime? deathday,
      int gender,
      dynamic homepage,
      int id,
      @JsonKey(name: "imdb_id") String imdbId,
      @JsonKey(name: "known_for_department") String knownForDepartment,
      String name,
      @JsonKey(name: "place_of_birth") String? placeOfBirth,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class __$$_PersonDetailCopyWithImpl<$Res>
    extends _$PersonDetailCopyWithImpl<$Res>
    implements _$$_PersonDetailCopyWith<$Res> {
  __$$_PersonDetailCopyWithImpl(
      _$_PersonDetail _value, $Res Function(_$_PersonDetail) _then)
      : super(_value, (v) => _then(v as _$_PersonDetail));

  @override
  _$_PersonDetail get _value => super._value as _$_PersonDetail;

  @override
  $Res call({
    Object? adult = freezed,
    Object? alsoKnownAs = freezed,
    Object? biography = freezed,
    Object? birthday = freezed,
    Object? deathday = freezed,
    Object? gender = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? placeOfBirth = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$_PersonDetail(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      alsoKnownAs: alsoKnownAs == freezed
          ? _value._alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biography: biography == freezed
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deathday: deathday == freezed
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeOfBirth: placeOfBirth == freezed
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonDetail implements _PersonDetail {
  const _$_PersonDetail(
      {required this.adult,
      @JsonKey(name: "also_known_as") required final List<String> alsoKnownAs,
      required this.biography,
      required this.birthday,
      required this.deathday,
      required this.gender,
      required this.homepage,
      required this.id,
      @JsonKey(name: "imdb_id") required this.imdbId,
      @JsonKey(name: "known_for_department") required this.knownForDepartment,
      required this.name,
      @JsonKey(name: "place_of_birth") required this.placeOfBirth,
      @JsonKey(name: "profile_path") required this.profilePath})
      : _alsoKnownAs = alsoKnownAs;

  factory _$_PersonDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PersonDetailFromJson(json);

  @override
  final bool adult;
  final List<String> _alsoKnownAs;
  @override
  @JsonKey(name: "also_known_as")
  List<String> get alsoKnownAs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alsoKnownAs);
  }

  @override
  final String biography;
  @override
  final DateTime? birthday;
  @override
  final DateTime? deathday;
  @override
  final int gender;
  @override
  final dynamic homepage;
  @override
  final int id;
  @override
  @JsonKey(name: "imdb_id")
  final String imdbId;
  @override
  @JsonKey(name: "known_for_department")
  final String knownForDepartment;
  @override
  final String name;
  @override
  @JsonKey(name: "place_of_birth")
  final String? placeOfBirth;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;

  @override
  String toString() {
    return 'PersonDetail(adult: $adult, alsoKnownAs: $alsoKnownAs, biography: $biography, birthday: $birthday, deathday: $deathday, gender: $gender, homepage: $homepage, id: $id, imdbId: $imdbId, knownForDepartment: $knownForDepartment, name: $name, placeOfBirth: $placeOfBirth, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetail &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other._alsoKnownAs, _alsoKnownAs) &&
            const DeepCollectionEquality().equals(other.biography, biography) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.deathday, deathday) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imdbId, imdbId) &&
            const DeepCollectionEquality()
                .equals(other.knownForDepartment, knownForDepartment) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.placeOfBirth, placeOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(_alsoKnownAs),
      const DeepCollectionEquality().hash(biography),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(deathday),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(homepage),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imdbId),
      const DeepCollectionEquality().hash(knownForDepartment),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(placeOfBirth),
      const DeepCollectionEquality().hash(profilePath));

  @JsonKey(ignore: true)
  @override
  _$$_PersonDetailCopyWith<_$_PersonDetail> get copyWith =>
      __$$_PersonDetailCopyWithImpl<_$_PersonDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonDetailToJson(
      this,
    );
  }
}

abstract class _PersonDetail implements PersonDetail {
  const factory _PersonDetail(
      {required final bool adult,
      @JsonKey(name: "also_known_as")
          required final List<String> alsoKnownAs,
      required final String biography,
      required final DateTime? birthday,
      required final DateTime? deathday,
      required final int gender,
      required final dynamic homepage,
      required final int id,
      @JsonKey(name: "imdb_id")
          required final String imdbId,
      @JsonKey(name: "known_for_department")
          required final String knownForDepartment,
      required final String name,
      @JsonKey(name: "place_of_birth")
          required final String? placeOfBirth,
      @JsonKey(name: "profile_path")
          required final String? profilePath}) = _$_PersonDetail;

  factory _PersonDetail.fromJson(Map<String, dynamic> json) =
      _$_PersonDetail.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: "also_known_as")
  List<String> get alsoKnownAs;
  @override
  String get biography;
  @override
  DateTime? get birthday;
  @override
  DateTime? get deathday;
  @override
  int get gender;
  @override
  dynamic get homepage;
  @override
  int get id;
  @override
  @JsonKey(name: "imdb_id")
  String get imdbId;
  @override
  @JsonKey(name: "known_for_department")
  String get knownForDepartment;
  @override
  String get name;
  @override
  @JsonKey(name: "place_of_birth")
  String? get placeOfBirth;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDetailCopyWith<_$_PersonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonImage _$PersonImageFromJson(Map<String, dynamic> json) {
  return _PersonImage.fromJson(json);
}

/// @nodoc
mixin _$PersonImage {
  @JsonKey(name: "aspect_ratio")
  double get aspectRatio => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "file_path")
  String get filePath => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonImageCopyWith<PersonImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonImageCopyWith<$Res> {
  factory $PersonImageCopyWith(
          PersonImage value, $Res Function(PersonImage) then) =
      _$PersonImageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "aspect_ratio") double aspectRatio,
      int height,
      @JsonKey(name: "file_path") String filePath,
      int width});
}

/// @nodoc
class _$PersonImageCopyWithImpl<$Res> implements $PersonImageCopyWith<$Res> {
  _$PersonImageCopyWithImpl(this._value, this._then);

  final PersonImage _value;
  // ignore: unused_field
  final $Res Function(PersonImage) _then;

  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? filePath = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonImageCopyWith<$Res>
    implements $PersonImageCopyWith<$Res> {
  factory _$$_PersonImageCopyWith(
          _$_PersonImage value, $Res Function(_$_PersonImage) then) =
      __$$_PersonImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "aspect_ratio") double aspectRatio,
      int height,
      @JsonKey(name: "file_path") String filePath,
      int width});
}

/// @nodoc
class __$$_PersonImageCopyWithImpl<$Res> extends _$PersonImageCopyWithImpl<$Res>
    implements _$$_PersonImageCopyWith<$Res> {
  __$$_PersonImageCopyWithImpl(
      _$_PersonImage _value, $Res Function(_$_PersonImage) _then)
      : super(_value, (v) => _then(v as _$_PersonImage));

  @override
  _$_PersonImage get _value => super._value as _$_PersonImage;

  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? filePath = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_PersonImage(
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonImage implements _PersonImage {
  const _$_PersonImage(
      {@JsonKey(name: "aspect_ratio") required this.aspectRatio,
      required this.height,
      @JsonKey(name: "file_path") required this.filePath,
      required this.width});

  factory _$_PersonImage.fromJson(Map<String, dynamic> json) =>
      _$$_PersonImageFromJson(json);

  @override
  @JsonKey(name: "aspect_ratio")
  final double aspectRatio;
  @override
  final int height;
  @override
  @JsonKey(name: "file_path")
  final String filePath;
  @override
  final int width;

  @override
  String toString() {
    return 'PersonImage(aspectRatio: $aspectRatio, height: $height, filePath: $filePath, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonImage &&
            const DeepCollectionEquality()
                .equals(other.aspectRatio, aspectRatio) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aspectRatio),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$$_PersonImageCopyWith<_$_PersonImage> get copyWith =>
      __$$_PersonImageCopyWithImpl<_$_PersonImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonImageToJson(
      this,
    );
  }
}

abstract class _PersonImage implements PersonImage {
  const factory _PersonImage(
      {@JsonKey(name: "aspect_ratio") required final double aspectRatio,
      required final int height,
      @JsonKey(name: "file_path") required final String filePath,
      required final int width}) = _$_PersonImage;

  factory _PersonImage.fromJson(Map<String, dynamic> json) =
      _$_PersonImage.fromJson;

  @override
  @JsonKey(name: "aspect_ratio")
  double get aspectRatio;
  @override
  int get height;
  @override
  @JsonKey(name: "file_path")
  String get filePath;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$_PersonImageCopyWith<_$_PersonImage> get copyWith =>
      throw _privateConstructorUsedError;
}
