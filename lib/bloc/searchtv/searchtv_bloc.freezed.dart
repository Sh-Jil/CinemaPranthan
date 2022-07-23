// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searchtv_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchTvEventTearOff {
  const _$SearchTvEventTearOff();

  _Searchtv searchtv({required String tvquery}) {
    return _Searchtv(
      tvquery: tvquery,
    );
  }
}

/// @nodoc
const $SearchTvEvent = _$SearchTvEventTearOff();

/// @nodoc
mixin _$SearchTvEvent {
  String get tvquery => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvquery) searchtv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvquery)? searchtv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvquery)? searchtv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searchtv value) searchtv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Searchtv value)? searchtv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searchtv value)? searchtv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTvEventCopyWith<SearchTvEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTvEventCopyWith<$Res> {
  factory $SearchTvEventCopyWith(
          SearchTvEvent value, $Res Function(SearchTvEvent) then) =
      _$SearchTvEventCopyWithImpl<$Res>;
  $Res call({String tvquery});
}

/// @nodoc
class _$SearchTvEventCopyWithImpl<$Res>
    implements $SearchTvEventCopyWith<$Res> {
  _$SearchTvEventCopyWithImpl(this._value, this._then);

  final SearchTvEvent _value;
  // ignore: unused_field
  final $Res Function(SearchTvEvent) _then;

  @override
  $Res call({
    Object? tvquery = freezed,
  }) {
    return _then(_value.copyWith(
      tvquery: tvquery == freezed
          ? _value.tvquery
          : tvquery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchtvCopyWith<$Res>
    implements $SearchTvEventCopyWith<$Res> {
  factory _$SearchtvCopyWith(_Searchtv value, $Res Function(_Searchtv) then) =
      __$SearchtvCopyWithImpl<$Res>;
  @override
  $Res call({String tvquery});
}

/// @nodoc
class __$SearchtvCopyWithImpl<$Res> extends _$SearchTvEventCopyWithImpl<$Res>
    implements _$SearchtvCopyWith<$Res> {
  __$SearchtvCopyWithImpl(_Searchtv _value, $Res Function(_Searchtv) _then)
      : super(_value, (v) => _then(v as _Searchtv));

  @override
  _Searchtv get _value => super._value as _Searchtv;

  @override
  $Res call({
    Object? tvquery = freezed,
  }) {
    return _then(_Searchtv(
      tvquery: tvquery == freezed
          ? _value.tvquery
          : tvquery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Searchtv implements _Searchtv {
  const _$_Searchtv({required this.tvquery});

  @override
  final String tvquery;

  @override
  String toString() {
    return 'SearchTvEvent.searchtv(tvquery: $tvquery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Searchtv &&
            const DeepCollectionEquality().equals(other.tvquery, tvquery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tvquery));

  @JsonKey(ignore: true)
  @override
  _$SearchtvCopyWith<_Searchtv> get copyWith =>
      __$SearchtvCopyWithImpl<_Searchtv>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvquery) searchtv,
  }) {
    return searchtv(tvquery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvquery)? searchtv,
  }) {
    return searchtv?.call(tvquery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvquery)? searchtv,
    required TResult orElse(),
  }) {
    if (searchtv != null) {
      return searchtv(tvquery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searchtv value) searchtv,
  }) {
    return searchtv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Searchtv value)? searchtv,
  }) {
    return searchtv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searchtv value)? searchtv,
    required TResult orElse(),
  }) {
    if (searchtv != null) {
      return searchtv(this);
    }
    return orElse();
  }
}

abstract class _Searchtv implements SearchTvEvent {
  const factory _Searchtv({required String tvquery}) = _$_Searchtv;

  @override
  String get tvquery;
  @override
  @JsonKey(ignore: true)
  _$SearchtvCopyWith<_Searchtv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchTvStateTearOff {
  const _$SearchTvStateTearOff();

  _SearchTvState call(
      {required bool isLoading,
      required List<TvModel> tvshows,
      required Option<Either<MainFailures, List<TvModel>>> options}) {
    return _SearchTvState(
      isLoading: isLoading,
      tvshows: tvshows,
      options: options,
    );
  }
}

/// @nodoc
const $SearchTvState = _$SearchTvStateTearOff();

/// @nodoc
mixin _$SearchTvState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TvModel> get tvshows => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<TvModel>>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTvStateCopyWith<SearchTvState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTvStateCopyWith<$Res> {
  factory $SearchTvStateCopyWith(
          SearchTvState value, $Res Function(SearchTvState) then) =
      _$SearchTvStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<TvModel> tvshows,
      Option<Either<MainFailures, List<TvModel>>> options});
}

/// @nodoc
class _$SearchTvStateCopyWithImpl<$Res>
    implements $SearchTvStateCopyWith<$Res> {
  _$SearchTvStateCopyWithImpl(this._value, this._then);

  final SearchTvState _value;
  // ignore: unused_field
  final $Res Function(SearchTvState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tvshows = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tvshows: tvshows == freezed
          ? _value.tvshows
          : tvshows // ignore: cast_nullable_to_non_nullable
              as List<TvModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<TvModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchTvStateCopyWith<$Res>
    implements $SearchTvStateCopyWith<$Res> {
  factory _$SearchTvStateCopyWith(
          _SearchTvState value, $Res Function(_SearchTvState) then) =
      __$SearchTvStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<TvModel> tvshows,
      Option<Either<MainFailures, List<TvModel>>> options});
}

/// @nodoc
class __$SearchTvStateCopyWithImpl<$Res>
    extends _$SearchTvStateCopyWithImpl<$Res>
    implements _$SearchTvStateCopyWith<$Res> {
  __$SearchTvStateCopyWithImpl(
      _SearchTvState _value, $Res Function(_SearchTvState) _then)
      : super(_value, (v) => _then(v as _SearchTvState));

  @override
  _SearchTvState get _value => super._value as _SearchTvState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tvshows = freezed,
    Object? options = freezed,
  }) {
    return _then(_SearchTvState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tvshows: tvshows == freezed
          ? _value.tvshows
          : tvshows // ignore: cast_nullable_to_non_nullable
              as List<TvModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<TvModel>>>,
    ));
  }
}

/// @nodoc

class _$_SearchTvState implements _SearchTvState {
  const _$_SearchTvState(
      {required this.isLoading, required this.tvshows, required this.options});

  @override
  final bool isLoading;
  @override
  final List<TvModel> tvshows;
  @override
  final Option<Either<MainFailures, List<TvModel>>> options;

  @override
  String toString() {
    return 'SearchTvState(isLoading: $isLoading, tvshows: $tvshows, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchTvState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.tvshows, tvshows) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(tvshows),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$SearchTvStateCopyWith<_SearchTvState> get copyWith =>
      __$SearchTvStateCopyWithImpl<_SearchTvState>(this, _$identity);
}

abstract class _SearchTvState implements SearchTvState {
  const factory _SearchTvState(
          {required bool isLoading,
          required List<TvModel> tvshows,
          required Option<Either<MainFailures, List<TvModel>>> options}) =
      _$_SearchTvState;

  @override
  bool get isLoading;
  @override
  List<TvModel> get tvshows;
  @override
  Option<Either<MainFailures, List<TvModel>>> get options;
  @override
  @JsonKey(ignore: true)
  _$SearchTvStateCopyWith<_SearchTvState> get copyWith =>
      throw _privateConstructorUsedError;
}
