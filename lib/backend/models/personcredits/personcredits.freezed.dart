// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'personcredits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonCredit _$PersonCreditFromJson(Map<String, dynamic> json) {
  return _PersonCredit.fromJson(json);
}

/// @nodoc
mixin _$PersonCredit {
  List<Cast> get cast => throw _privateConstructorUsedError;
  List<Crew> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCreditCopyWith<PersonCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCreditCopyWith<$Res> {
  factory $PersonCreditCopyWith(
          PersonCredit value, $Res Function(PersonCredit) then) =
      _$PersonCreditCopyWithImpl<$Res>;
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class _$PersonCreditCopyWithImpl<$Res> implements $PersonCreditCopyWith<$Res> {
  _$PersonCreditCopyWithImpl(this._value, this._then);

  final PersonCredit _value;
  // ignore: unused_field
  final $Res Function(PersonCredit) _then;

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
abstract class _$$_PersonCreditCopyWith<$Res>
    implements $PersonCreditCopyWith<$Res> {
  factory _$$_PersonCreditCopyWith(
          _$_PersonCredit value, $Res Function(_$_PersonCredit) then) =
      __$$_PersonCreditCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class __$$_PersonCreditCopyWithImpl<$Res>
    extends _$PersonCreditCopyWithImpl<$Res>
    implements _$$_PersonCreditCopyWith<$Res> {
  __$$_PersonCreditCopyWithImpl(
      _$_PersonCredit _value, $Res Function(_$_PersonCredit) _then)
      : super(_value, (v) => _then(v as _$_PersonCredit));

  @override
  _$_PersonCredit get _value => super._value as _$_PersonCredit;

  @override
  $Res call({
    Object? cast = freezed,
    Object? crew = freezed,
  }) {
    return _then(_$_PersonCredit(
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
@JsonSerializable()
class _$_PersonCredit implements _PersonCredit {
  const _$_PersonCredit(
      {required final List<Cast> cast, required final List<Crew> crew})
      : _cast = cast,
        _crew = crew;

  factory _$_PersonCredit.fromJson(Map<String, dynamic> json) =>
      _$$_PersonCreditFromJson(json);

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
    return 'PersonCredit(cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonCredit &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  _$$_PersonCreditCopyWith<_$_PersonCredit> get copyWith =>
      __$$_PersonCreditCopyWithImpl<_$_PersonCredit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonCreditToJson(
      this,
    );
  }
}

abstract class _PersonCredit implements PersonCredit {
  const factory _PersonCredit(
      {required final List<Cast> cast,
      required final List<Crew> crew}) = _$_PersonCredit;

  factory _PersonCredit.fromJson(Map<String, dynamic> json) =
      _$_PersonCredit.fromJson;

  @override
  List<Cast> get cast;
  @override
  List<Crew> get crew;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCreditCopyWith<_$_PersonCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_id")
  String? get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  MediaType get mediaType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      int id,
      @JsonKey(name: "poster_path") String? posterPath,
      String? title,
      String? character,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "media_type") MediaType mediaType,
      String? name});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
    Object? mediaType = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      int id,
      @JsonKey(name: "poster_path") String? posterPath,
      String? title,
      String? character,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "media_type") MediaType mediaType,
      String? name});
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
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
    Object? mediaType = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Cast(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast implements _Cast {
  const _$_Cast(
      {@JsonKey(name: "backdrop_path") required this.backdropPath,
      required this.id,
      @JsonKey(name: "poster_path") required this.posterPath,
      required this.title,
      required this.character,
      @JsonKey(name: "credit_id") required this.creditId,
      @JsonKey(name: "media_type") required this.mediaType,
      required this.name});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  final int id;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  final String? title;
  @override
  final String? character;
  @override
  @JsonKey(name: "credit_id")
  final String? creditId;
  @override
  @JsonKey(name: "media_type")
  final MediaType mediaType;
  @override
  final String? name;

  @override
  String toString() {
    return 'Cast(backdropPath: $backdropPath, id: $id, posterPath: $posterPath, title: $title, character: $character, creditId: $creditId, mediaType: $mediaType, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality().equals(other.creditId, creditId) &&
            const DeepCollectionEquality().equals(other.mediaType, mediaType) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(creditId),
      const DeepCollectionEquality().hash(mediaType),
      const DeepCollectionEquality().hash(name));

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
      {@JsonKey(name: "backdrop_path") required final String? backdropPath,
      required final int id,
      @JsonKey(name: "poster_path") required final String? posterPath,
      required final String? title,
      required final String? character,
      @JsonKey(name: "credit_id") required final String? creditId,
      @JsonKey(name: "media_type") required final MediaType mediaType,
      required final String? name}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  int get id;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  String? get title;
  @override
  String? get character;
  @override
  @JsonKey(name: "credit_id")
  String? get creditId;
  @override
  @JsonKey(name: "media_type")
  MediaType get mediaType;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

/// @nodoc
mixin _$Crew {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_id")
  String? get creditId => throw _privateConstructorUsedError;
  @JsonKey(name: "job")
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  MediaType get mediaType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      int id,
      @JsonKey(name: "poster_path") String? posterPath,
      String? title,
      String? name,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "job") String? character,
      @JsonKey(name: "media_type") MediaType mediaType});
}

/// @nodoc
class _$CrewCopyWithImpl<$Res> implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

  final Crew _value;
  // ignore: unused_field
  final $Res Function(Crew) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? creditId = freezed,
    Object? character = freezed,
    Object? mediaType = freezed,
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
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
abstract class _$$_CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$$_CrewCopyWith(_$_Crew value, $Res Function(_$_Crew) then) =
      __$$_CrewCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      int id,
      @JsonKey(name: "poster_path") String? posterPath,
      String? title,
      String? name,
      @JsonKey(name: "credit_id") String? creditId,
      @JsonKey(name: "job") String? character,
      @JsonKey(name: "media_type") MediaType mediaType});
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
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? creditId = freezed,
    Object? character = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_$_Crew(
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
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: creditId == freezed
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Crew implements _Crew {
  const _$_Crew(
      {required this.adult,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      required this.id,
      @JsonKey(name: "poster_path") required this.posterPath,
      required this.title,
      required this.name,
      @JsonKey(name: "credit_id") required this.creditId,
      @JsonKey(name: "job") required this.character,
      @JsonKey(name: "media_type") required this.mediaType});

  factory _$_Crew.fromJson(Map<String, dynamic> json) => _$$_CrewFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  final int id;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  final String? title;
  @override
  final String? name;
  @override
  @JsonKey(name: "credit_id")
  final String? creditId;
  @override
  @JsonKey(name: "job")
  final String? character;
  @override
  @JsonKey(name: "media_type")
  final MediaType mediaType;

  @override
  String toString() {
    return 'Crew(adult: $adult, backdropPath: $backdropPath, id: $id, posterPath: $posterPath, title: $title, name: $name, creditId: $creditId, character: $character, mediaType: $mediaType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crew &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.creditId, creditId) &&
            const DeepCollectionEquality().equals(other.character, character) &&
            const DeepCollectionEquality().equals(other.mediaType, mediaType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(creditId),
      const DeepCollectionEquality().hash(character),
      const DeepCollectionEquality().hash(mediaType));

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
          {required final bool adult,
          @JsonKey(name: "backdrop_path") required final String? backdropPath,
          required final int id,
          @JsonKey(name: "poster_path") required final String? posterPath,
          required final String? title,
          required final String? name,
          @JsonKey(name: "credit_id") required final String? creditId,
          @JsonKey(name: "job") required final String? character,
          @JsonKey(name: "media_type") required final MediaType mediaType}) =
      _$_Crew;

  factory _Crew.fromJson(Map<String, dynamic> json) = _$_Crew.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  int get id;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  String? get title;
  @override
  String? get name;
  @override
  @JsonKey(name: "credit_id")
  String? get creditId;
  @override
  @JsonKey(name: "job")
  String? get character;
  @override
  @JsonKey(name: "media_type")
  MediaType get mediaType;
  @override
  @JsonKey(ignore: true)
  _$$_CrewCopyWith<_$_Crew> get copyWith => throw _privateConstructorUsedError;
}
