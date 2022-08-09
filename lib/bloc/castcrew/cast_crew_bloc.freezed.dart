// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_crew_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CastCrewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieid) getcastcrew,
    required TResult Function(String tvid) gettvshowcredit,
    required TResult Function(String tvid, String seasonno) getseasoncredit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getcastcrew value) getcastcrew,
    required TResult Function(_GetTvShowCredit value) gettvshowcredit,
    required TResult Function(_GetSeasonCredit value) getseasoncredit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCrewEventCopyWith<$Res> {
  factory $CastCrewEventCopyWith(
          CastCrewEvent value, $Res Function(CastCrewEvent) then) =
      _$CastCrewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CastCrewEventCopyWithImpl<$Res>
    implements $CastCrewEventCopyWith<$Res> {
  _$CastCrewEventCopyWithImpl(this._value, this._then);

  final CastCrewEvent _value;
  // ignore: unused_field
  final $Res Function(CastCrewEvent) _then;
}

/// @nodoc
abstract class _$$_GetcastcrewCopyWith<$Res> {
  factory _$$_GetcastcrewCopyWith(
          _$_Getcastcrew value, $Res Function(_$_Getcastcrew) then) =
      __$$_GetcastcrewCopyWithImpl<$Res>;
  $Res call({String movieid});
}

/// @nodoc
class __$$_GetcastcrewCopyWithImpl<$Res>
    extends _$CastCrewEventCopyWithImpl<$Res>
    implements _$$_GetcastcrewCopyWith<$Res> {
  __$$_GetcastcrewCopyWithImpl(
      _$_Getcastcrew _value, $Res Function(_$_Getcastcrew) _then)
      : super(_value, (v) => _then(v as _$_Getcastcrew));

  @override
  _$_Getcastcrew get _value => super._value as _$_Getcastcrew;

  @override
  $Res call({
    Object? movieid = freezed,
  }) {
    return _then(_$_Getcastcrew(
      movieid: movieid == freezed
          ? _value.movieid
          : movieid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Getcastcrew implements _Getcastcrew {
  const _$_Getcastcrew({required this.movieid});

  @override
  final String movieid;

  @override
  String toString() {
    return 'CastCrewEvent.getcastcrew(movieid: $movieid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Getcastcrew &&
            const DeepCollectionEquality().equals(other.movieid, movieid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieid));

  @JsonKey(ignore: true)
  @override
  _$$_GetcastcrewCopyWith<_$_Getcastcrew> get copyWith =>
      __$$_GetcastcrewCopyWithImpl<_$_Getcastcrew>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieid) getcastcrew,
    required TResult Function(String tvid) gettvshowcredit,
    required TResult Function(String tvid, String seasonno) getseasoncredit,
  }) {
    return getcastcrew(movieid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
  }) {
    return getcastcrew?.call(movieid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
    required TResult orElse(),
  }) {
    if (getcastcrew != null) {
      return getcastcrew(movieid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getcastcrew value) getcastcrew,
    required TResult Function(_GetTvShowCredit value) gettvshowcredit,
    required TResult Function(_GetSeasonCredit value) getseasoncredit,
  }) {
    return getcastcrew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
  }) {
    return getcastcrew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
    required TResult orElse(),
  }) {
    if (getcastcrew != null) {
      return getcastcrew(this);
    }
    return orElse();
  }
}

abstract class _Getcastcrew implements CastCrewEvent {
  const factory _Getcastcrew({required final String movieid}) = _$_Getcastcrew;

  String get movieid;
  @JsonKey(ignore: true)
  _$$_GetcastcrewCopyWith<_$_Getcastcrew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTvShowCreditCopyWith<$Res> {
  factory _$$_GetTvShowCreditCopyWith(
          _$_GetTvShowCredit value, $Res Function(_$_GetTvShowCredit) then) =
      __$$_GetTvShowCreditCopyWithImpl<$Res>;
  $Res call({String tvid});
}

/// @nodoc
class __$$_GetTvShowCreditCopyWithImpl<$Res>
    extends _$CastCrewEventCopyWithImpl<$Res>
    implements _$$_GetTvShowCreditCopyWith<$Res> {
  __$$_GetTvShowCreditCopyWithImpl(
      _$_GetTvShowCredit _value, $Res Function(_$_GetTvShowCredit) _then)
      : super(_value, (v) => _then(v as _$_GetTvShowCredit));

  @override
  _$_GetTvShowCredit get _value => super._value as _$_GetTvShowCredit;

  @override
  $Res call({
    Object? tvid = freezed,
  }) {
    return _then(_$_GetTvShowCredit(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTvShowCredit implements _GetTvShowCredit {
  const _$_GetTvShowCredit({required this.tvid});

  @override
  final String tvid;

  @override
  String toString() {
    return 'CastCrewEvent.gettvshowcredit(tvid: $tvid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTvShowCredit &&
            const DeepCollectionEquality().equals(other.tvid, tvid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tvid));

  @JsonKey(ignore: true)
  @override
  _$$_GetTvShowCreditCopyWith<_$_GetTvShowCredit> get copyWith =>
      __$$_GetTvShowCreditCopyWithImpl<_$_GetTvShowCredit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieid) getcastcrew,
    required TResult Function(String tvid) gettvshowcredit,
    required TResult Function(String tvid, String seasonno) getseasoncredit,
  }) {
    return gettvshowcredit(tvid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
  }) {
    return gettvshowcredit?.call(tvid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
    required TResult orElse(),
  }) {
    if (gettvshowcredit != null) {
      return gettvshowcredit(tvid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getcastcrew value) getcastcrew,
    required TResult Function(_GetTvShowCredit value) gettvshowcredit,
    required TResult Function(_GetSeasonCredit value) getseasoncredit,
  }) {
    return gettvshowcredit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
  }) {
    return gettvshowcredit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
    required TResult orElse(),
  }) {
    if (gettvshowcredit != null) {
      return gettvshowcredit(this);
    }
    return orElse();
  }
}

abstract class _GetTvShowCredit implements CastCrewEvent {
  const factory _GetTvShowCredit({required final String tvid}) =
      _$_GetTvShowCredit;

  String get tvid;
  @JsonKey(ignore: true)
  _$$_GetTvShowCreditCopyWith<_$_GetTvShowCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSeasonCreditCopyWith<$Res> {
  factory _$$_GetSeasonCreditCopyWith(
          _$_GetSeasonCredit value, $Res Function(_$_GetSeasonCredit) then) =
      __$$_GetSeasonCreditCopyWithImpl<$Res>;
  $Res call({String tvid, String seasonno});
}

/// @nodoc
class __$$_GetSeasonCreditCopyWithImpl<$Res>
    extends _$CastCrewEventCopyWithImpl<$Res>
    implements _$$_GetSeasonCreditCopyWith<$Res> {
  __$$_GetSeasonCreditCopyWithImpl(
      _$_GetSeasonCredit _value, $Res Function(_$_GetSeasonCredit) _then)
      : super(_value, (v) => _then(v as _$_GetSeasonCredit));

  @override
  _$_GetSeasonCredit get _value => super._value as _$_GetSeasonCredit;

  @override
  $Res call({
    Object? tvid = freezed,
    Object? seasonno = freezed,
  }) {
    return _then(_$_GetSeasonCredit(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
              as String,
      seasonno: seasonno == freezed
          ? _value.seasonno
          : seasonno // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSeasonCredit implements _GetSeasonCredit {
  const _$_GetSeasonCredit({required this.tvid, required this.seasonno});

  @override
  final String tvid;
  @override
  final String seasonno;

  @override
  String toString() {
    return 'CastCrewEvent.getseasoncredit(tvid: $tvid, seasonno: $seasonno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSeasonCredit &&
            const DeepCollectionEquality().equals(other.tvid, tvid) &&
            const DeepCollectionEquality().equals(other.seasonno, seasonno));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tvid),
      const DeepCollectionEquality().hash(seasonno));

  @JsonKey(ignore: true)
  @override
  _$$_GetSeasonCreditCopyWith<_$_GetSeasonCredit> get copyWith =>
      __$$_GetSeasonCreditCopyWithImpl<_$_GetSeasonCredit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieid) getcastcrew,
    required TResult Function(String tvid) gettvshowcredit,
    required TResult Function(String tvid, String seasonno) getseasoncredit,
  }) {
    return getseasoncredit(tvid, seasonno);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
  }) {
    return getseasoncredit?.call(tvid, seasonno);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieid)? getcastcrew,
    TResult Function(String tvid)? gettvshowcredit,
    TResult Function(String tvid, String seasonno)? getseasoncredit,
    required TResult orElse(),
  }) {
    if (getseasoncredit != null) {
      return getseasoncredit(tvid, seasonno);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Getcastcrew value) getcastcrew,
    required TResult Function(_GetTvShowCredit value) gettvshowcredit,
    required TResult Function(_GetSeasonCredit value) getseasoncredit,
  }) {
    return getseasoncredit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
  }) {
    return getseasoncredit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Getcastcrew value)? getcastcrew,
    TResult Function(_GetTvShowCredit value)? gettvshowcredit,
    TResult Function(_GetSeasonCredit value)? getseasoncredit,
    required TResult orElse(),
  }) {
    if (getseasoncredit != null) {
      return getseasoncredit(this);
    }
    return orElse();
  }
}

abstract class _GetSeasonCredit implements CastCrewEvent {
  const factory _GetSeasonCredit(
      {required final String tvid,
      required final String seasonno}) = _$_GetSeasonCredit;

  String get tvid;
  String get seasonno;
  @JsonKey(ignore: true)
  _$$_GetSeasonCreditCopyWith<_$_GetSeasonCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CastCrewState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CastandCrew> get castcrewlists => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<CastandCrew>>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastCrewStateCopyWith<CastCrewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCrewStateCopyWith<$Res> {
  factory $CastCrewStateCopyWith(
          CastCrewState value, $Res Function(CastCrewState) then) =
      _$CastCrewStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<CastandCrew> castcrewlists,
      Option<Either<MainFailures, List<CastandCrew>>> options});
}

/// @nodoc
class _$CastCrewStateCopyWithImpl<$Res>
    implements $CastCrewStateCopyWith<$Res> {
  _$CastCrewStateCopyWithImpl(this._value, this._then);

  final CastCrewState _value;
  // ignore: unused_field
  final $Res Function(CastCrewState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? castcrewlists = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      castcrewlists: castcrewlists == freezed
          ? _value.castcrewlists
          : castcrewlists // ignore: cast_nullable_to_non_nullable
              as List<CastandCrew>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CastandCrew>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CastCrewStateCopyWith<$Res>
    implements $CastCrewStateCopyWith<$Res> {
  factory _$$_CastCrewStateCopyWith(
          _$_CastCrewState value, $Res Function(_$_CastCrewState) then) =
      __$$_CastCrewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<CastandCrew> castcrewlists,
      Option<Either<MainFailures, List<CastandCrew>>> options});
}

/// @nodoc
class __$$_CastCrewStateCopyWithImpl<$Res>
    extends _$CastCrewStateCopyWithImpl<$Res>
    implements _$$_CastCrewStateCopyWith<$Res> {
  __$$_CastCrewStateCopyWithImpl(
      _$_CastCrewState _value, $Res Function(_$_CastCrewState) _then)
      : super(_value, (v) => _then(v as _$_CastCrewState));

  @override
  _$_CastCrewState get _value => super._value as _$_CastCrewState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? castcrewlists = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_CastCrewState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      castcrewlists: castcrewlists == freezed
          ? _value._castcrewlists
          : castcrewlists // ignore: cast_nullable_to_non_nullable
              as List<CastandCrew>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<CastandCrew>>>,
    ));
  }
}

/// @nodoc

class _$_CastCrewState implements _CastCrewState {
  const _$_CastCrewState(
      {required this.isLoading,
      required final List<CastandCrew> castcrewlists,
      required this.options})
      : _castcrewlists = castcrewlists;

  @override
  final bool isLoading;
  final List<CastandCrew> _castcrewlists;
  @override
  List<CastandCrew> get castcrewlists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_castcrewlists);
  }

  @override
  final Option<Either<MainFailures, List<CastandCrew>>> options;

  @override
  String toString() {
    return 'CastCrewState(isLoading: $isLoading, castcrewlists: $castcrewlists, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastCrewState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._castcrewlists, _castcrewlists) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_castcrewlists),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_CastCrewStateCopyWith<_$_CastCrewState> get copyWith =>
      __$$_CastCrewStateCopyWithImpl<_$_CastCrewState>(this, _$identity);
}

abstract class _CastCrewState implements CastCrewState {
  const factory _CastCrewState(
      {required final bool isLoading,
      required final List<CastandCrew> castcrewlists,
      required final Option<Either<MainFailures, List<CastandCrew>>>
          options}) = _$_CastCrewState;

  @override
  bool get isLoading;
  @override
  List<CastandCrew> get castcrewlists;
  @override
  Option<Either<MainFailures, List<CastandCrew>>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_CastCrewStateCopyWith<_$_CastCrewState> get copyWith =>
      throw _privateConstructorUsedError;
}
