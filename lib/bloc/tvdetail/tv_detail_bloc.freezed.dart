// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvDetailEvent {
  String get tvid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvid) gettvdetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvid)? gettvdetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvid)? gettvdetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTvDetail value) gettvdetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTvDetail value)? gettvdetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTvDetail value)? gettvdetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvDetailEventCopyWith<TvDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvDetailEventCopyWith<$Res> {
  factory $TvDetailEventCopyWith(
          TvDetailEvent value, $Res Function(TvDetailEvent) then) =
      _$TvDetailEventCopyWithImpl<$Res>;
  $Res call({String tvid});
}

/// @nodoc
class _$TvDetailEventCopyWithImpl<$Res>
    implements $TvDetailEventCopyWith<$Res> {
  _$TvDetailEventCopyWithImpl(this._value, this._then);

  final TvDetailEvent _value;
  // ignore: unused_field
  final $Res Function(TvDetailEvent) _then;

  @override
  $Res call({
    Object? tvid = freezed,
  }) {
    return _then(_value.copyWith(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetTvDetailCopyWith<$Res>
    implements $TvDetailEventCopyWith<$Res> {
  factory _$$_GetTvDetailCopyWith(
          _$_GetTvDetail value, $Res Function(_$_GetTvDetail) then) =
      __$$_GetTvDetailCopyWithImpl<$Res>;
  @override
  $Res call({String tvid});
}

/// @nodoc
class __$$_GetTvDetailCopyWithImpl<$Res>
    extends _$TvDetailEventCopyWithImpl<$Res>
    implements _$$_GetTvDetailCopyWith<$Res> {
  __$$_GetTvDetailCopyWithImpl(
      _$_GetTvDetail _value, $Res Function(_$_GetTvDetail) _then)
      : super(_value, (v) => _then(v as _$_GetTvDetail));

  @override
  _$_GetTvDetail get _value => super._value as _$_GetTvDetail;

  @override
  $Res call({
    Object? tvid = freezed,
  }) {
    return _then(_$_GetTvDetail(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTvDetail implements _GetTvDetail {
  const _$_GetTvDetail({required this.tvid});

  @override
  final String tvid;

  @override
  String toString() {
    return 'TvDetailEvent.gettvdetail(tvid: $tvid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTvDetail &&
            const DeepCollectionEquality().equals(other.tvid, tvid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tvid));

  @JsonKey(ignore: true)
  @override
  _$$_GetTvDetailCopyWith<_$_GetTvDetail> get copyWith =>
      __$$_GetTvDetailCopyWithImpl<_$_GetTvDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvid) gettvdetail,
  }) {
    return gettvdetail(tvid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvid)? gettvdetail,
  }) {
    return gettvdetail?.call(tvid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvid)? gettvdetail,
    required TResult orElse(),
  }) {
    if (gettvdetail != null) {
      return gettvdetail(tvid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTvDetail value) gettvdetail,
  }) {
    return gettvdetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTvDetail value)? gettvdetail,
  }) {
    return gettvdetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTvDetail value)? gettvdetail,
    required TResult orElse(),
  }) {
    if (gettvdetail != null) {
      return gettvdetail(this);
    }
    return orElse();
  }
}

abstract class _GetTvDetail implements TvDetailEvent {
  const factory _GetTvDetail({required final String tvid}) = _$_GetTvDetail;

  @override
  String get tvid;
  @override
  @JsonKey(ignore: true)
  _$$_GetTvDetailCopyWith<_$_GetTvDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TvDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<TvDetailsModel>>> get options =>
      throw _privateConstructorUsedError;
  List<TvDetailsModel> get tvdetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvDetailStateCopyWith<TvDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvDetailStateCopyWith<$Res> {
  factory $TvDetailStateCopyWith(
          TvDetailState value, $Res Function(TvDetailState) then) =
      _$TvDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<TvDetailsModel>>> options,
      List<TvDetailsModel> tvdetails});
}

/// @nodoc
class _$TvDetailStateCopyWithImpl<$Res>
    implements $TvDetailStateCopyWith<$Res> {
  _$TvDetailStateCopyWithImpl(this._value, this._then);

  final TvDetailState _value;
  // ignore: unused_field
  final $Res Function(TvDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? tvdetails = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<TvDetailsModel>>>,
      tvdetails: tvdetails == freezed
          ? _value.tvdetails
          : tvdetails // ignore: cast_nullable_to_non_nullable
              as List<TvDetailsModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_TvDetailStateCopyWith<$Res>
    implements $TvDetailStateCopyWith<$Res> {
  factory _$$_TvDetailStateCopyWith(
          _$_TvDetailState value, $Res Function(_$_TvDetailState) then) =
      __$$_TvDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<MainFailures, List<TvDetailsModel>>> options,
      List<TvDetailsModel> tvdetails});
}

/// @nodoc
class __$$_TvDetailStateCopyWithImpl<$Res>
    extends _$TvDetailStateCopyWithImpl<$Res>
    implements _$$_TvDetailStateCopyWith<$Res> {
  __$$_TvDetailStateCopyWithImpl(
      _$_TvDetailState _value, $Res Function(_$_TvDetailState) _then)
      : super(_value, (v) => _then(v as _$_TvDetailState));

  @override
  _$_TvDetailState get _value => super._value as _$_TvDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? options = freezed,
    Object? tvdetails = freezed,
  }) {
    return _then(_$_TvDetailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<TvDetailsModel>>>,
      tvdetails: tvdetails == freezed
          ? _value._tvdetails
          : tvdetails // ignore: cast_nullable_to_non_nullable
              as List<TvDetailsModel>,
    ));
  }
}

/// @nodoc

class _$_TvDetailState implements _TvDetailState {
  const _$_TvDetailState(
      {required this.isLoading,
      required this.options,
      required final List<TvDetailsModel> tvdetails})
      : _tvdetails = tvdetails;

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailures, List<TvDetailsModel>>> options;
  final List<TvDetailsModel> _tvdetails;
  @override
  List<TvDetailsModel> get tvdetails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvdetails);
  }

  @override
  String toString() {
    return 'TvDetailState(isLoading: $isLoading, options: $options, tvdetails: $tvdetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality()
                .equals(other._tvdetails, _tvdetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(_tvdetails));

  @JsonKey(ignore: true)
  @override
  _$$_TvDetailStateCopyWith<_$_TvDetailState> get copyWith =>
      __$$_TvDetailStateCopyWithImpl<_$_TvDetailState>(this, _$identity);
}

abstract class _TvDetailState implements TvDetailState {
  const factory _TvDetailState(
      {required final bool isLoading,
      required final Option<Either<MainFailures, List<TvDetailsModel>>> options,
      required final List<TvDetailsModel> tvdetails}) = _$_TvDetailState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailures, List<TvDetailsModel>>> get options;
  @override
  List<TvDetailsModel> get tvdetails;
  @override
  @JsonKey(ignore: true)
  _$$_TvDetailStateCopyWith<_$_TvDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
