// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonDetailEvent {
  String get personid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String personid) getdetails,
    required TResult Function(String personid) getcredits,
    required TResult Function(String personid) getimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdetails value) getdetails,
    required TResult Function(_GetCredits value) getcredits,
    required TResult Function(_GetImages value) getimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonDetailEventCopyWith<PersonDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailEventCopyWith<$Res> {
  factory $PersonDetailEventCopyWith(
          PersonDetailEvent value, $Res Function(PersonDetailEvent) then) =
      _$PersonDetailEventCopyWithImpl<$Res>;
  $Res call({String personid});
}

/// @nodoc
class _$PersonDetailEventCopyWithImpl<$Res>
    implements $PersonDetailEventCopyWith<$Res> {
  _$PersonDetailEventCopyWithImpl(this._value, this._then);

  final PersonDetailEvent _value;
  // ignore: unused_field
  final $Res Function(PersonDetailEvent) _then;

  @override
  $Res call({
    Object? personid = freezed,
  }) {
    return _then(_value.copyWith(
      personid: personid == freezed
          ? _value.personid
          : personid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetdetailsCopyWith<$Res>
    implements $PersonDetailEventCopyWith<$Res> {
  factory _$$_GetdetailsCopyWith(
          _$_Getdetails value, $Res Function(_$_Getdetails) then) =
      __$$_GetdetailsCopyWithImpl<$Res>;
  @override
  $Res call({String personid});
}

/// @nodoc
class __$$_GetdetailsCopyWithImpl<$Res>
    extends _$PersonDetailEventCopyWithImpl<$Res>
    implements _$$_GetdetailsCopyWith<$Res> {
  __$$_GetdetailsCopyWithImpl(
      _$_Getdetails _value, $Res Function(_$_Getdetails) _then)
      : super(_value, (v) => _then(v as _$_Getdetails));

  @override
  _$_Getdetails get _value => super._value as _$_Getdetails;

  @override
  $Res call({
    Object? personid = freezed,
  }) {
    return _then(_$_Getdetails(
      personid: personid == freezed
          ? _value.personid
          : personid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Getdetails implements _Getdetails {
  const _$_Getdetails({required this.personid});

  @override
  final String personid;

  @override
  String toString() {
    return 'PersonDetailEvent.getdetails(personid: $personid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Getdetails &&
            const DeepCollectionEquality().equals(other.personid, personid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(personid));

  @JsonKey(ignore: true)
  @override
  _$$_GetdetailsCopyWith<_$_Getdetails> get copyWith =>
      __$$_GetdetailsCopyWithImpl<_$_Getdetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String personid) getdetails,
    required TResult Function(String personid) getcredits,
    required TResult Function(String personid) getimages,
  }) {
    return getdetails(personid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
  }) {
    return getdetails?.call(personid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
    required TResult orElse(),
  }) {
    if (getdetails != null) {
      return getdetails(personid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdetails value) getdetails,
    required TResult Function(_GetCredits value) getcredits,
    required TResult Function(_GetImages value) getimages,
  }) {
    return getdetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
  }) {
    return getdetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
    required TResult orElse(),
  }) {
    if (getdetails != null) {
      return getdetails(this);
    }
    return orElse();
  }
}

abstract class _Getdetails implements PersonDetailEvent {
  const factory _Getdetails({required final String personid}) = _$_Getdetails;

  @override
  String get personid;
  @override
  @JsonKey(ignore: true)
  _$$_GetdetailsCopyWith<_$_Getdetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCreditsCopyWith<$Res>
    implements $PersonDetailEventCopyWith<$Res> {
  factory _$$_GetCreditsCopyWith(
          _$_GetCredits value, $Res Function(_$_GetCredits) then) =
      __$$_GetCreditsCopyWithImpl<$Res>;
  @override
  $Res call({String personid});
}

/// @nodoc
class __$$_GetCreditsCopyWithImpl<$Res>
    extends _$PersonDetailEventCopyWithImpl<$Res>
    implements _$$_GetCreditsCopyWith<$Res> {
  __$$_GetCreditsCopyWithImpl(
      _$_GetCredits _value, $Res Function(_$_GetCredits) _then)
      : super(_value, (v) => _then(v as _$_GetCredits));

  @override
  _$_GetCredits get _value => super._value as _$_GetCredits;

  @override
  $Res call({
    Object? personid = freezed,
  }) {
    return _then(_$_GetCredits(
      personid: personid == freezed
          ? _value.personid
          : personid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCredits implements _GetCredits {
  const _$_GetCredits({required this.personid});

  @override
  final String personid;

  @override
  String toString() {
    return 'PersonDetailEvent.getcredits(personid: $personid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCredits &&
            const DeepCollectionEquality().equals(other.personid, personid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(personid));

  @JsonKey(ignore: true)
  @override
  _$$_GetCreditsCopyWith<_$_GetCredits> get copyWith =>
      __$$_GetCreditsCopyWithImpl<_$_GetCredits>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String personid) getdetails,
    required TResult Function(String personid) getcredits,
    required TResult Function(String personid) getimages,
  }) {
    return getcredits(personid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
  }) {
    return getcredits?.call(personid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
    required TResult orElse(),
  }) {
    if (getcredits != null) {
      return getcredits(personid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdetails value) getdetails,
    required TResult Function(_GetCredits value) getcredits,
    required TResult Function(_GetImages value) getimages,
  }) {
    return getcredits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
  }) {
    return getcredits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
    required TResult orElse(),
  }) {
    if (getcredits != null) {
      return getcredits(this);
    }
    return orElse();
  }
}

abstract class _GetCredits implements PersonDetailEvent {
  const factory _GetCredits({required final String personid}) = _$_GetCredits;

  @override
  String get personid;
  @override
  @JsonKey(ignore: true)
  _$$_GetCreditsCopyWith<_$_GetCredits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetImagesCopyWith<$Res>
    implements $PersonDetailEventCopyWith<$Res> {
  factory _$$_GetImagesCopyWith(
          _$_GetImages value, $Res Function(_$_GetImages) then) =
      __$$_GetImagesCopyWithImpl<$Res>;
  @override
  $Res call({String personid});
}

/// @nodoc
class __$$_GetImagesCopyWithImpl<$Res>
    extends _$PersonDetailEventCopyWithImpl<$Res>
    implements _$$_GetImagesCopyWith<$Res> {
  __$$_GetImagesCopyWithImpl(
      _$_GetImages _value, $Res Function(_$_GetImages) _then)
      : super(_value, (v) => _then(v as _$_GetImages));

  @override
  _$_GetImages get _value => super._value as _$_GetImages;

  @override
  $Res call({
    Object? personid = freezed,
  }) {
    return _then(_$_GetImages(
      personid: personid == freezed
          ? _value.personid
          : personid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetImages implements _GetImages {
  const _$_GetImages({required this.personid});

  @override
  final String personid;

  @override
  String toString() {
    return 'PersonDetailEvent.getimages(personid: $personid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetImages &&
            const DeepCollectionEquality().equals(other.personid, personid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(personid));

  @JsonKey(ignore: true)
  @override
  _$$_GetImagesCopyWith<_$_GetImages> get copyWith =>
      __$$_GetImagesCopyWithImpl<_$_GetImages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String personid) getdetails,
    required TResult Function(String personid) getcredits,
    required TResult Function(String personid) getimages,
  }) {
    return getimages(personid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
  }) {
    return getimages?.call(personid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String personid)? getdetails,
    TResult Function(String personid)? getcredits,
    TResult Function(String personid)? getimages,
    required TResult orElse(),
  }) {
    if (getimages != null) {
      return getimages(personid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getdetails value) getdetails,
    required TResult Function(_GetCredits value) getcredits,
    required TResult Function(_GetImages value) getimages,
  }) {
    return getimages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
  }) {
    return getimages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getdetails value)? getdetails,
    TResult Function(_GetCredits value)? getcredits,
    TResult Function(_GetImages value)? getimages,
    required TResult orElse(),
  }) {
    if (getimages != null) {
      return getimages(this);
    }
    return orElse();
  }
}

abstract class _GetImages implements PersonDetailEvent {
  const factory _GetImages({required final String personid}) = _$_GetImages;

  @override
  String get personid;
  @override
  @JsonKey(ignore: true)
  _$$_GetImagesCopyWith<_$_GetImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<PersonDetail>>> get options =>
      throw _privateConstructorUsedError;
  List<PersonDetail> get persondetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonDetailStateCopyWith<PersonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailStateCopyWith<$Res> {
  factory $PersonDetailStateCopyWith(
          PersonDetailState value, $Res Function(PersonDetailState) then) =
      _$PersonDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<PersonDetail>>> options,
      List<PersonDetail> persondetails});
}

/// @nodoc
class _$PersonDetailStateCopyWithImpl<$Res>
    implements $PersonDetailStateCopyWith<$Res> {
  _$PersonDetailStateCopyWithImpl(this._value, this._then);

  final PersonDetailState _value;
  // ignore: unused_field
  final $Res Function(PersonDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? persondetails = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PersonDetail>>>,
      persondetails: persondetails == freezed
          ? _value.persondetails
          : persondetails // ignore: cast_nullable_to_non_nullable
              as List<PersonDetail>,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonDetailStateCopyWith<$Res>
    implements $PersonDetailStateCopyWith<$Res> {
  factory _$$_PersonDetailStateCopyWith(_$_PersonDetailState value,
          $Res Function(_$_PersonDetailState) then) =
      __$$_PersonDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<PersonDetail>>> options,
      List<PersonDetail> persondetails});
}

/// @nodoc
class __$$_PersonDetailStateCopyWithImpl<$Res>
    extends _$PersonDetailStateCopyWithImpl<$Res>
    implements _$$_PersonDetailStateCopyWith<$Res> {
  __$$_PersonDetailStateCopyWithImpl(
      _$_PersonDetailState _value, $Res Function(_$_PersonDetailState) _then)
      : super(_value, (v) => _then(v as _$_PersonDetailState));

  @override
  _$_PersonDetailState get _value => super._value as _$_PersonDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? persondetails = freezed,
  }) {
    return _then(_$_PersonDetailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PersonDetail>>>,
      persondetails: persondetails == freezed
          ? _value._persondetails
          : persondetails // ignore: cast_nullable_to_non_nullable
              as List<PersonDetail>,
    ));
  }
}

/// @nodoc

class _$_PersonDetailState implements _PersonDetailState {
  const _$_PersonDetailState(
      {required this.isLoading,
      required this.options,
      required final List<PersonDetail> persondetails})
      : _persondetails = persondetails;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailures, List<PersonDetail>>> options;
  final List<PersonDetail> _persondetails;
  @override
  List<PersonDetail> get persondetails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_persondetails);
  }

  @override
  String toString() {
    return 'PersonDetailState(isLoading: $isLoading, options: $options, persondetails: $persondetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other._persondetails, _persondetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(_persondetails));

  @JsonKey(ignore: true)
  @override
  _$$_PersonDetailStateCopyWith<_$_PersonDetailState> get copyWith =>
      __$$_PersonDetailStateCopyWithImpl<_$_PersonDetailState>(
          this, _$identity);
}

abstract class _PersonDetailState implements PersonDetailState {
  const factory _PersonDetailState(
      {required final bool isLoading,
      required final Option<Either<MainFailures, List<PersonDetail>>> options,
      required final List<PersonDetail> persondetails}) = _$_PersonDetailState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailures, List<PersonDetail>>> get options;
  @override
  List<PersonDetail> get persondetails;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDetailStateCopyWith<_$_PersonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonCreditState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<PersonCredit>>> get options =>
      throw _privateConstructorUsedError;
  List<PersonCredit> get personcredits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonCreditStateCopyWith<PersonCreditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCreditStateCopyWith<$Res> {
  factory $PersonCreditStateCopyWith(
          PersonCreditState value, $Res Function(PersonCreditState) then) =
      _$PersonCreditStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<PersonCredit>>> options,
      List<PersonCredit> personcredits});
}

/// @nodoc
class _$PersonCreditStateCopyWithImpl<$Res>
    implements $PersonCreditStateCopyWith<$Res> {
  _$PersonCreditStateCopyWithImpl(this._value, this._then);

  final PersonCreditState _value;
  // ignore: unused_field
  final $Res Function(PersonCreditState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? personcredits = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PersonCredit>>>,
      personcredits: personcredits == freezed
          ? _value.personcredits
          : personcredits // ignore: cast_nullable_to_non_nullable
              as List<PersonCredit>,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonCreditStateCopyWith<$Res>
    implements $PersonCreditStateCopyWith<$Res> {
  factory _$$_PersonCreditStateCopyWith(_$_PersonCreditState value,
          $Res Function(_$_PersonCreditState) then) =
      __$$_PersonCreditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<PersonCredit>>> options,
      List<PersonCredit> personcredits});
}

/// @nodoc
class __$$_PersonCreditStateCopyWithImpl<$Res>
    extends _$PersonCreditStateCopyWithImpl<$Res>
    implements _$$_PersonCreditStateCopyWith<$Res> {
  __$$_PersonCreditStateCopyWithImpl(
      _$_PersonCreditState _value, $Res Function(_$_PersonCreditState) _then)
      : super(_value, (v) => _then(v as _$_PersonCreditState));

  @override
  _$_PersonCreditState get _value => super._value as _$_PersonCreditState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? personcredits = freezed,
  }) {
    return _then(_$_PersonCreditState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PersonCredit>>>,
      personcredits: personcredits == freezed
          ? _value._personcredits
          : personcredits // ignore: cast_nullable_to_non_nullable
              as List<PersonCredit>,
    ));
  }
}

/// @nodoc

class _$_PersonCreditState implements _PersonCreditState {
  const _$_PersonCreditState(
      {required this.isLoading,
      required this.options,
      required final List<PersonCredit> personcredits})
      : _personcredits = personcredits;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailures, List<PersonCredit>>> options;
  final List<PersonCredit> _personcredits;
  @override
  List<PersonCredit> get personcredits {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personcredits);
  }

  @override
  String toString() {
    return 'PersonCreditState(isLoading: $isLoading, options: $options, personcredits: $personcredits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonCreditState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other._personcredits, _personcredits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(_personcredits));

  @JsonKey(ignore: true)
  @override
  _$$_PersonCreditStateCopyWith<_$_PersonCreditState> get copyWith =>
      __$$_PersonCreditStateCopyWithImpl<_$_PersonCreditState>(
          this, _$identity);
}

abstract class _PersonCreditState implements PersonCreditState {
  const factory _PersonCreditState(
      {required final bool isLoading,
      required final Option<Either<MainFailures, List<PersonCredit>>> options,
      required final List<PersonCredit> personcredits}) = _$_PersonCreditState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailures, List<PersonCredit>>> get options;
  @override
  List<PersonCredit> get personcredits;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCreditStateCopyWith<_$_PersonCreditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonImageState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<PersonImage>>> get options =>
      throw _privateConstructorUsedError;
  List<PersonImage> get personimage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonImageStateCopyWith<PersonImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonImageStateCopyWith<$Res> {
  factory $PersonImageStateCopyWith(
          PersonImageState value, $Res Function(PersonImageState) then) =
      _$PersonImageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<PersonImage>>> options,
      List<PersonImage> personimage});
}

/// @nodoc
class _$PersonImageStateCopyWithImpl<$Res>
    implements $PersonImageStateCopyWith<$Res> {
  _$PersonImageStateCopyWithImpl(this._value, this._then);

  final PersonImageState _value;
  // ignore: unused_field
  final $Res Function(PersonImageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? personimage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PersonImage>>>,
      personimage: personimage == freezed
          ? _value.personimage
          : personimage // ignore: cast_nullable_to_non_nullable
              as List<PersonImage>,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonImageStateCopyWith<$Res>
    implements $PersonImageStateCopyWith<$Res> {
  factory _$$_PersonImageStateCopyWith(
          _$_PersonImageState value, $Res Function(_$_PersonImageState) then) =
      __$$_PersonImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<PersonImage>>> options,
      List<PersonImage> personimage});
}

/// @nodoc
class __$$_PersonImageStateCopyWithImpl<$Res>
    extends _$PersonImageStateCopyWithImpl<$Res>
    implements _$$_PersonImageStateCopyWith<$Res> {
  __$$_PersonImageStateCopyWithImpl(
      _$_PersonImageState _value, $Res Function(_$_PersonImageState) _then)
      : super(_value, (v) => _then(v as _$_PersonImageState));

  @override
  _$_PersonImageState get _value => super._value as _$_PersonImageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? personimage = freezed,
  }) {
    return _then(_$_PersonImageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PersonImage>>>,
      personimage: personimage == freezed
          ? _value._personimage
          : personimage // ignore: cast_nullable_to_non_nullable
              as List<PersonImage>,
    ));
  }
}

/// @nodoc

class _$_PersonImageState implements _PersonImageState {
  const _$_PersonImageState(
      {required this.isLoading,
      required this.options,
      required final List<PersonImage> personimage})
      : _personimage = personimage;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailures, List<PersonImage>>> options;
  final List<PersonImage> _personimage;
  @override
  List<PersonImage> get personimage {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personimage);
  }

  @override
  String toString() {
    return 'PersonImageState(isLoading: $isLoading, options: $options, personimage: $personimage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonImageState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other._personimage, _personimage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(_personimage));

  @JsonKey(ignore: true)
  @override
  _$$_PersonImageStateCopyWith<_$_PersonImageState> get copyWith =>
      __$$_PersonImageStateCopyWithImpl<_$_PersonImageState>(this, _$identity);
}

abstract class _PersonImageState implements PersonImageState {
  const factory _PersonImageState(
      {required final bool isLoading,
      required final Option<Either<MainFailures, List<PersonImage>>> options,
      required final List<PersonImage> personimage}) = _$_PersonImageState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailures, List<PersonImage>>> get options;
  @override
  List<PersonImage> get personimage;
  @override
  @JsonKey(ignore: true)
  _$$_PersonImageStateCopyWith<_$_PersonImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
