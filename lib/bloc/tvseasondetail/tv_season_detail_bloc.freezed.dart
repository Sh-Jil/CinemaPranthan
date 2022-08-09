// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_season_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvSeasonDetailEvent {
  String get tvid => throw _privateConstructorUsedError;
  String get seasonno => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvid, String seasonno) getdetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvid, String seasonno)? getdetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvid, String seasonno)? getdetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getdetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getdetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getdetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvSeasonDetailEventCopyWith<TvSeasonDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeasonDetailEventCopyWith<$Res> {
  factory $TvSeasonDetailEventCopyWith(
          TvSeasonDetailEvent value, $Res Function(TvSeasonDetailEvent) then) =
      _$TvSeasonDetailEventCopyWithImpl<$Res>;
  $Res call({String tvid, String seasonno});
}

/// @nodoc
class _$TvSeasonDetailEventCopyWithImpl<$Res>
    implements $TvSeasonDetailEventCopyWith<$Res> {
  _$TvSeasonDetailEventCopyWithImpl(this._value, this._then);

  final TvSeasonDetailEvent _value;
  // ignore: unused_field
  final $Res Function(TvSeasonDetailEvent) _then;

  @override
  $Res call({
    Object? tvid = freezed,
    Object? seasonno = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_GetDetailsCopyWith<$Res>
    implements $TvSeasonDetailEventCopyWith<$Res> {
  factory _$$_GetDetailsCopyWith(
          _$_GetDetails value, $Res Function(_$_GetDetails) then) =
      __$$_GetDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String tvid, String seasonno});
}

/// @nodoc
class __$$_GetDetailsCopyWithImpl<$Res>
    extends _$TvSeasonDetailEventCopyWithImpl<$Res>
    implements _$$_GetDetailsCopyWith<$Res> {
  __$$_GetDetailsCopyWithImpl(
      _$_GetDetails _value, $Res Function(_$_GetDetails) _then)
      : super(_value, (v) => _then(v as _$_GetDetails));

  @override
  _$_GetDetails get _value => super._value as _$_GetDetails;

  @override
  $Res call({
    Object? tvid = freezed,
    Object? seasonno = freezed,
  }) {
    return _then(_$_GetDetails(
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

class _$_GetDetails implements _GetDetails {
  const _$_GetDetails({required this.tvid, required this.seasonno});

  @override
  final String tvid;
  @override
  final String seasonno;

  @override
  String toString() {
    return 'TvSeasonDetailEvent.getdetails(tvid: $tvid, seasonno: $seasonno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDetails &&
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
  _$$_GetDetailsCopyWith<_$_GetDetails> get copyWith =>
      __$$_GetDetailsCopyWithImpl<_$_GetDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvid, String seasonno) getdetails,
  }) {
    return getdetails(tvid, seasonno);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvid, String seasonno)? getdetails,
  }) {
    return getdetails?.call(tvid, seasonno);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvid, String seasonno)? getdetails,
    required TResult orElse(),
  }) {
    if (getdetails != null) {
      return getdetails(tvid, seasonno);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getdetails,
  }) {
    return getdetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDetails value)? getdetails,
  }) {
    return getdetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getdetails,
    required TResult orElse(),
  }) {
    if (getdetails != null) {
      return getdetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements TvSeasonDetailEvent {
  const factory _GetDetails(
      {required final String tvid,
      required final String seasonno}) = _$_GetDetails;

  @override
  String get tvid;
  @override
  String get seasonno;
  @override
  @JsonKey(ignore: true)
  _$$_GetDetailsCopyWith<_$_GetDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TvSeasonDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<SeasonDetailsModel>>> get options =>
      throw _privateConstructorUsedError;
  List<SeasonDetailsModel> get seasondetail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvSeasonDetailStateCopyWith<TvSeasonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeasonDetailStateCopyWith<$Res> {
  factory $TvSeasonDetailStateCopyWith(
          TvSeasonDetailState value, $Res Function(TvSeasonDetailState) then) =
      _$TvSeasonDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<SeasonDetailsModel>>> options,
      List<SeasonDetailsModel> seasondetail});
}

/// @nodoc
class _$TvSeasonDetailStateCopyWithImpl<$Res>
    implements $TvSeasonDetailStateCopyWith<$Res> {
  _$TvSeasonDetailStateCopyWithImpl(this._value, this._then);

  final TvSeasonDetailState _value;
  // ignore: unused_field
  final $Res Function(TvSeasonDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? seasondetail = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<SeasonDetailsModel>>>,
      seasondetail: seasondetail == freezed
          ? _value.seasondetail
          : seasondetail // ignore: cast_nullable_to_non_nullable
              as List<SeasonDetailsModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_TvSeasonDetailStateCopyWith<$Res>
    implements $TvSeasonDetailStateCopyWith<$Res> {
  factory _$$_TvSeasonDetailStateCopyWith(_$_TvSeasonDetailState value,
          $Res Function(_$_TvSeasonDetailState) then) =
      __$$_TvSeasonDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<SeasonDetailsModel>>> options,
      List<SeasonDetailsModel> seasondetail});
}

/// @nodoc
class __$$_TvSeasonDetailStateCopyWithImpl<$Res>
    extends _$TvSeasonDetailStateCopyWithImpl<$Res>
    implements _$$_TvSeasonDetailStateCopyWith<$Res> {
  __$$_TvSeasonDetailStateCopyWithImpl(_$_TvSeasonDetailState _value,
      $Res Function(_$_TvSeasonDetailState) _then)
      : super(_value, (v) => _then(v as _$_TvSeasonDetailState));

  @override
  _$_TvSeasonDetailState get _value => super._value as _$_TvSeasonDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? seasondetail = freezed,
  }) {
    return _then(_$_TvSeasonDetailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<SeasonDetailsModel>>>,
      seasondetail: seasondetail == freezed
          ? _value._seasondetail
          : seasondetail // ignore: cast_nullable_to_non_nullable
              as List<SeasonDetailsModel>,
    ));
  }
}

/// @nodoc

class _$_TvSeasonDetailState implements _TvSeasonDetailState {
  const _$_TvSeasonDetailState(
      {required this.isLoading,
      required this.options,
      required final List<SeasonDetailsModel> seasondetail})
      : _seasondetail = seasondetail;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailures, List<SeasonDetailsModel>>> options;
  final List<SeasonDetailsModel> _seasondetail;
  @override
  List<SeasonDetailsModel> get seasondetail {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasondetail);
  }

  @override
  String toString() {
    return 'TvSeasonDetailState(isLoading: $isLoading, options: $options, seasondetail: $seasondetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvSeasonDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other._seasondetail, _seasondetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(_seasondetail));

  @JsonKey(ignore: true)
  @override
  _$$_TvSeasonDetailStateCopyWith<_$_TvSeasonDetailState> get copyWith =>
      __$$_TvSeasonDetailStateCopyWithImpl<_$_TvSeasonDetailState>(
          this, _$identity);
}

abstract class _TvSeasonDetailState implements TvSeasonDetailState {
  const factory _TvSeasonDetailState(
          {required final bool isLoading,
          required final Option<Either<MainFailures, List<SeasonDetailsModel>>>
              options,
          required final List<SeasonDetailsModel> seasondetail}) =
      _$_TvSeasonDetailState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailures, List<SeasonDetailsModel>>> get options;
  @override
  List<SeasonDetailsModel> get seasondetail;
  @override
  @JsonKey(ignore: true)
  _$$_TvSeasonDetailStateCopyWith<_$_TvSeasonDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
