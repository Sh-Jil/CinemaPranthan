// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starcastmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CastandCrewTearOff {
  const _$CastandCrewTearOff();

  _CastandCrew call({required List<Cast> cast, required List<Crew> crew}) {
    return _CastandCrew(
      cast: cast,
      crew: crew,
    );
  }
}

/// @nodoc
const $CastandCrew = _$CastandCrewTearOff();

/// @nodoc
mixin _$CastandCrew {
  List<Cast> get cast => throw _privateConstructorUsedError;
  List<Crew> get crew => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastandCrewCopyWith<CastandCrew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastandCrewCopyWith<$Res> {
  factory $CastandCrewCopyWith(
          CastandCrew value, $Res Function(CastandCrew) then) =
      _$CastandCrewCopyWithImpl<$Res>;
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class _$CastandCrewCopyWithImpl<$Res> implements $CastandCrewCopyWith<$Res> {
  _$CastandCrewCopyWithImpl(this._value, this._then);

  final CastandCrew _value;
  // ignore: unused_field
  final $Res Function(CastandCrew) _then;

  @override
  $Res call({
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: crew == freezed
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc
abstract class _$CastandCrewCopyWith<$Res>
    implements $CastandCrewCopyWith<$Res> {
  factory _$CastandCrewCopyWith(
          _CastandCrew value, $Res Function(_CastandCrew) then) =
      __$CastandCrewCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class __$CastandCrewCopyWithImpl<$Res> extends _$CastandCrewCopyWithImpl<$Res>
    implements _$CastandCrewCopyWith<$Res> {
  __$CastandCrewCopyWithImpl(
      _CastandCrew _value, $Res Function(_CastandCrew) _then)
      : super(_value, (v) => _then(v as _CastandCrew));

  @override
  _CastandCrew get _value => super._value as _CastandCrew;

  @override
  $Res call({
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_CastandCrew(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: crew == freezed
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc

class _$_CastandCrew implements _CastandCrew {
  const _$_CastandCrew({required this.cast, required this.crew});

  @override
  final List<Cast> cast;
  @override
  final List<Crew> crew;

  @override
  String toString() {
    return 'CastandCrew(cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CastandCrew &&
            const DeepCollectionEquality().equals(other.cast, cast) &&
            const DeepCollectionEquality().equals(other.crew, crew));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cast),
      const DeepCollectionEquality().hash(crew));

  @JsonKey(ignore: true)
  @override
  _$CastandCrewCopyWith<_CastandCrew> get copyWith =>
      __$CastandCrewCopyWithImpl<_CastandCrew>(this, _$identity);
}

abstract class _CastandCrew implements CastandCrew {
  const factory _CastandCrew(
      {required List<Cast> cast, required List<Crew> crew}) = _$_CastandCrew;

  @override
  List<Cast> get cast;
  @override
  List<Crew> get crew;
  @override
  @JsonKey(ignore: true)
  _$CastandCrewCopyWith<_CastandCrew> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

  _Cast call(
      {required int id,
      required String? name,
      @JsonKey(name: "original_name") required String? originalName,
      @JsonKey(name: "profile_path") required String? profilePath,
      required String? character,
      @JsonKey(name: "credit_id") required String? creditId}) {
    return _Cast(
      id: id,
      name: name,
      originalName: originalName,
      profilePath: profilePath,
      character: character,
      creditId: creditId,
    );
  }

  Cast fromJson(Map<String, Object?> json) {
    return Cast.fromJson(json);
  }
}

/// @nodoc
const $Cast = _$CastTearOff();

/// @nodoc
mixin _$Cast {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_id")
  String? get creditId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "profile_path") String? profilePath,
      String? character,
      @JsonKey(name: "credit_id") String? creditId});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "profile_path") String? profilePath,
      String? character,
      @JsonKey(name: "credit_id") String? creditId});
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
  }) {
    return _then(_Cast(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast implements _Cast {
  const _$_Cast(
      {required this.id,
      required this.name,
      @JsonKey(name: "original_name") required this.originalName,
      @JsonKey(name: "profile_path") required this.profilePath,
      required this.character,
      @JsonKey(name: "credit_id") required this.creditId});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;
  @override
  final String? character;
  @override
  @JsonKey(name: "credit_id")
  final String? creditId;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, originalName: $originalName, profilePath: $profilePath, character: $character, creditId: $creditId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cast &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality().equals(other.creditId, creditId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(originalName),
      const DeepCollectionEquality().hash(profilePath),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(creditId));

  @JsonKey(ignore: true)
  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(this);
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required int id,
      required String? name,
      @JsonKey(name: "original_name") required String? originalName,
      @JsonKey(name: "profile_path") required String? profilePath,
      required String? character,
      @JsonKey(name: "credit_id") required String? creditId}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  String? get character;
  @override
  @JsonKey(name: "credit_id")
  String? get creditId;
  @override
  @JsonKey(ignore: true)
  _$CastCopyWith<_Cast> get copyWith => throw _privateConstructorUsedError;
}

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

/// @nodoc
class _$CrewTearOff {
  const _$CrewTearOff();

  _Crew call(
      {required int id,
      required String? name,
      @JsonKey(name: "original_name") required String? originalName,
      @JsonKey(name: "profile_path") required String? profilePath,
      @JsonKey(name: "credit_id") required String? creditId,
      @JsonKey(name: "job") required String? character}) {
    return _Crew(
      id: id,
      name: name,
      originalName: originalName,
      profilePath: profilePath,
      creditId: creditId,
      character: character,
    );
  }

  Crew fromJson(Map<String, Object?> json) {
    return Crew.fromJson(json);
  }
}

/// @nodoc
const $Crew = _$CrewTearOff();

/// @nodoc
mixin _$Crew {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_id")
  String? get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: "job")
  String? get character => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "job") String? character});
}

/// @nodoc
class _$CrewCopyWithImpl<$Res> implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

  final Crew _value;
  // ignore: unused_field
  final $Res Function(Crew) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
    Object? creditId = freezed,
    Object? character = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$CrewCopyWith(_Crew value, $Res Function(_Crew) then) =
      __$CrewCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "job") String? character});
}

/// @nodoc
class __$CrewCopyWithImpl<$Res> extends _$CrewCopyWithImpl<$Res>
    implements _$CrewCopyWith<$Res> {
  __$CrewCopyWithImpl(_Crew _value, $Res Function(_Crew) _then)
      : super(_value, (v) => _then(v as _Crew));

  @override
  _Crew get _value => super._value as _Crew;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
    Object? creditId = freezed,
    Object? character = freezed,
  }) {
    return _then(_Crew(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Crew implements _Crew {
  const _$_Crew(
      {required this.id,
      required this.name,
      @JsonKey(name: "original_name") required this.originalName,
      @JsonKey(name: "profile_path") required this.profilePath,
      @JsonKey(name: "credit_id") required this.creditId,
      @JsonKey(name: "job") required this.character});

  factory _$_Crew.fromJson(Map<String, dynamic> json) => _$$_CrewFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;
  @override
  @JsonKey(name: "credit_id")
  final String? creditId;
  @override
  @JsonKey(name: "job")
  final String? character;

  @override
  String toString() {
    return 'Crew(id: $id, name: $name, originalName: $originalName, profilePath: $profilePath, creditId: $creditId, character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Crew &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality().equals(other.creditId, creditId) &&
            const DeepCollectionEquality().equals(other.character, character));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(originalName),
      const DeepCollectionEquality().hash(profilePath),
      const DeepCollectionEquality().hash(creditId),
      const DeepCollectionEquality().hash(character));

  @JsonKey(ignore: true)
  @override
  _$CrewCopyWith<_Crew> get copyWith =>
      __$CrewCopyWithImpl<_Crew>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrewToJson(this);
  }
}

abstract class _Crew implements Crew {
  const factory _Crew(
      {required int id,
      required String? name,
      @JsonKey(name: "original_name") required String? originalName,
      @JsonKey(name: "profile_path") required String? profilePath,
      @JsonKey(name: "credit_id") required String? creditId,
      @JsonKey(name: "job") required String? character}) = _$_Crew;

  factory _Crew.fromJson(Map<String, dynamic> json) = _$_Crew.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @override
  @JsonKey(name: "credit_id")
  String? get creditId;
  @override
  @JsonKey(name: "job")
  String? get character;
  @override
  @JsonKey(ignore: true)
  _$CrewCopyWith<_Crew> get copyWith => throw _privateConstructorUsedError;
}
