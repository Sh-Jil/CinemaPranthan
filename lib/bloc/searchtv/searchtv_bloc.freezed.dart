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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTvEvent {
  String get tvquery => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvquery, int page) searchtv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvquery, int page)? searchtv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvquery, int page)? searchtv,
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
  $Res call({String tvquery, int page});
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
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      tvquery: tvquery == freezed
          ? _value.tvquery
          : tvquery // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchtvCopyWith<$Res>
    implements $SearchTvEventCopyWith<$Res> {
  factory _$$_SearchtvCopyWith(
          _$_Searchtv value, $Res Function(_$_Searchtv) then) =
      __$$_SearchtvCopyWithImpl<$Res>;
  @override
  $Res call({String tvquery, int page});
}

/// @nodoc
class __$$_SearchtvCopyWithImpl<$Res> extends _$SearchTvEventCopyWithImpl<$Res>
    implements _$$_SearchtvCopyWith<$Res> {
  __$$_SearchtvCopyWithImpl(
      _$_Searchtv _value, $Res Function(_$_Searchtv) _then)
      : super(_value, (v) => _then(v as _$_Searchtv));

  @override
  _$_Searchtv get _value => super._value as _$_Searchtv;

  @override
  $Res call({
    Object? tvquery = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_Searchtv(
      tvquery: tvquery == freezed
          ? _value.tvquery
          : tvquery // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Searchtv implements _Searchtv {
  const _$_Searchtv({required this.tvquery, required this.page});

  @override
  final String tvquery;
  @override
  final int page;

  @override
  String toString() {
    return 'SearchTvEvent.searchtv(tvquery: $tvquery, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searchtv &&
            const DeepCollectionEquality().equals(other.tvquery, tvquery) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tvquery),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_SearchtvCopyWith<_$_Searchtv> get copyWith =>
      __$$_SearchtvCopyWithImpl<_$_Searchtv>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tvquery, int page) searchtv,
  }) {
    return searchtv(tvquery, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String tvquery, int page)? searchtv,
  }) {
    return searchtv?.call(tvquery, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tvquery, int page)? searchtv,
    required TResult orElse(),
  }) {
    if (searchtv != null) {
      return searchtv(tvquery, page);
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
  const factory _Searchtv(
      {required final String tvquery, required final int page}) = _$_Searchtv;

  @override
  String get tvquery;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_SearchtvCopyWith<_$_Searchtv> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_SearchTvStateCopyWith<$Res>
    implements $SearchTvStateCopyWith<$Res> {
  factory _$$_SearchTvStateCopyWith(
          _$_SearchTvState value, $Res Function(_$_SearchTvState) then) =
      __$$_SearchTvStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<TvModel> tvshows,
      Option<Either<MainFailures, List<TvModel>>> options});
}

/// @nodoc
class __$$_SearchTvStateCopyWithImpl<$Res>
    extends _$SearchTvStateCopyWithImpl<$Res>
    implements _$$_SearchTvStateCopyWith<$Res> {
  __$$_SearchTvStateCopyWithImpl(
      _$_SearchTvState _value, $Res Function(_$_SearchTvState) _then)
      : super(_value, (v) => _then(v as _$_SearchTvState));

  @override
  _$_SearchTvState get _value => super._value as _$_SearchTvState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tvshows = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_SearchTvState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tvshows: tvshows == freezed
          ? _value._tvshows
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
      {required this.isLoading,
      required final List<TvModel> tvshows,
      required this.options})
      : _tvshows = tvshows;

  @override
  final bool isLoading;
  final List<TvModel> _tvshows;
  @override
  List<TvModel> get tvshows {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvshows);
  }

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
            other is _$_SearchTvState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._tvshows, _tvshows) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_tvshows),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_SearchTvStateCopyWith<_$_SearchTvState> get copyWith =>
      __$$_SearchTvStateCopyWithImpl<_$_SearchTvState>(this, _$identity);
}

abstract class _SearchTvState implements SearchTvState {
  const factory _SearchTvState(
          {required final bool isLoading,
          required final List<TvModel> tvshows,
          required final Option<Either<MainFailures, List<TvModel>>> options}) =
      _$_SearchTvState;

  @override
  bool get isLoading;
  @override
  List<TvModel> get tvshows;
  @override
  Option<Either<MainFailures, List<TvModel>>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTvStateCopyWith<_$_SearchTvState> get copyWith =>
      throw _privateConstructorUsedError;
}
