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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_CastandCrewCopyWith<$Res>
    implements $CastandCrewCopyWith<$Res> {
  factory _$$_CastandCrewCopyWith(
          _$_CastandCrew value, $Res Function(_$_CastandCrew) then) =
      __$$_CastandCrewCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class __$$_CastandCrewCopyWithImpl<$Res> extends _$CastandCrewCopyWithImpl<$Res>
    implements _$$_CastandCrewCopyWith<$Res> {
  __$$_CastandCrewCopyWithImpl(
      _$_CastandCrew _value, $Res Function(_$_CastandCrew) _then)
      : super(_value, (v) => _then(v as _$_CastandCrew));

  @override
  _$_CastandCrew get _value => super._value as _$_CastandCrew;

  @override
  $Res call({
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_$_CastandCrew(
      cast: cast == freezed
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: crew == freezed
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc

class _$_CastandCrew implements _CastandCrew {
  const _$_CastandCrew(
      {required final List<Cast> cast, required final List<Crew> crew})
      : _cast = cast,
        _crew = crew;

  final List<Cast> _cast;
  @override
  List<Cast> get cast {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<Crew> _crew;
  @override
  List<Crew> get crew {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'CastandCrew(cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastandCrew &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  _$$_CastandCrewCopyWith<_$_CastandCrew> get copyWith =>
      __$$_CastandCrewCopyWithImpl<_$_CastandCrew>(this, _$identity);
}

abstract class _CastandCrew implements CastandCrew {
  const factory _CastandCrew(
      {required final List<Cast> cast,
      required final List<Crew> crew}) = _$_CastandCrew;

  @override
  List<Cast> get cast;
  @override
  List<Crew> get crew;
  @override
  @JsonKey(ignore: true)
  _$$_CastandCrewCopyWith<_$_CastandCrew> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

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
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
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
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, (v) => _then(v as _$_Cast));

  @override
  _$_Cast get _value => super._value as _$_Cast;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
  }) {
    return _then(_$_Cast(
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
            other is _$_Cast &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality().equals(other.creditId, creditId));
  }

  @JsonKey(ignore: true)
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
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required final int id,
      required final String? name,
      @JsonKey(name: "original_name") required final String? originalName,
      @JsonKey(name: "profile_path") required final String? profilePath,
      required final String? character,
      @JsonKey(name: "credit_id") required final String? creditId}) = _$_Cast;

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
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

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
abstract class _$$_CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$$_CrewCopyWith(_$_Crew value, $Res Function(_$_Crew) then) =
      __$$_CrewCopyWithImpl<$Res>;
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
class __$$_CrewCopyWithImpl<$Res> extends _$CrewCopyWithImpl<$Res>
    implements _$$_CrewCopyWith<$Res> {
  __$$_CrewCopyWithImpl(_$_Crew _value, $Res Function(_$_Crew) _then)
      : super(_value, (v) => _then(v as _$_Crew));

  @override
  _$_Crew get _value => super._value as _$_Crew;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
    Object? creditId = freezed,
    Object? character = freezed,
  }) {
    return _then(_$_Crew(
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
            other is _$_Crew &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality()
                .equals(other.profilePath, profilePath) &&
            const DeepCollectionEquality().equals(other.creditId, creditId) &&
            const DeepCollectionEquality().equals(other.character, character));
  }

  @JsonKey(ignore: true)
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
  _$$_CrewCopyWith<_$_Crew> get copyWith =>
      __$$_CrewCopyWithImpl<_$_Crew>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrewToJson(
      this,
    );
  }
}

abstract class _Crew implements Crew {
  const factory _Crew(
      {required final int id,
      required final String? name,
      @JsonKey(name: "original_name") required final String? originalName,
      @JsonKey(name: "profile_path") required final String? profilePath,
      @JsonKey(name: "credit_id") required final String? creditId,
      @JsonKey(name: "job") required final String? character}) = _$_Crew;

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
  _$$_CrewCopyWith<_$_Crew> get copyWith => throw _privateConstructorUsedError;
}
