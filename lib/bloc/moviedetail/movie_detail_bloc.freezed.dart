// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailEvent {
  String get movieparam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieparam) getmoviedetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieparam)? getmoviedetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieparam)? getmoviedetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetail value) getmoviedetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getmoviedetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getmoviedetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailEventCopyWith<MovieDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailEventCopyWith<$Res> {
  factory $MovieDetailEventCopyWith(
          MovieDetailEvent value, $Res Function(MovieDetailEvent) then) =
      _$MovieDetailEventCopyWithImpl<$Res>;
  $Res call({String movieparam});
}

/// @nodoc
class _$MovieDetailEventCopyWithImpl<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  _$MovieDetailEventCopyWithImpl(this._value, this._then);

  final MovieDetailEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailEvent) _then;

  @override
  $Res call({
    Object? movieparam = freezed,
  }) {
    return _then(_value.copyWith(
      movieparam: movieparam == freezed
          ? _value.movieparam
          : movieparam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetMovieDetailCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$$_GetMovieDetailCopyWith(
          _$_GetMovieDetail value, $Res Function(_$_GetMovieDetail) then) =
      __$$_GetMovieDetailCopyWithImpl<$Res>;
  @override
  $Res call({String movieparam});
}

/// @nodoc
class __$$_GetMovieDetailCopyWithImpl<$Res>
    extends _$MovieDetailEventCopyWithImpl<$Res>
    implements _$$_GetMovieDetailCopyWith<$Res> {
  __$$_GetMovieDetailCopyWithImpl(
      _$_GetMovieDetail _value, $Res Function(_$_GetMovieDetail) _then)
      : super(_value, (v) => _then(v as _$_GetMovieDetail));

  @override
  _$_GetMovieDetail get _value => super._value as _$_GetMovieDetail;

  @override
  $Res call({
    Object? movieparam = freezed,
  }) {
    return _then(_$_GetMovieDetail(
      movieparam: movieparam == freezed
          ? _value.movieparam
          : movieparam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMovieDetail implements _GetMovieDetail {
  const _$_GetMovieDetail({required this.movieparam});

  @override
  final String movieparam;

  @override
  String toString() {
    return 'MovieDetailEvent.getmoviedetail(movieparam: $movieparam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieDetail &&
            const DeepCollectionEquality()
                .equals(other.movieparam, movieparam));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieparam));

  @JsonKey(ignore: true)
  @override
  _$$_GetMovieDetailCopyWith<_$_GetMovieDetail> get copyWith =>
      __$$_GetMovieDetailCopyWithImpl<_$_GetMovieDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String movieparam) getmoviedetail,
  }) {
    return getmoviedetail(movieparam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String movieparam)? getmoviedetail,
  }) {
    return getmoviedetail?.call(movieparam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String movieparam)? getmoviedetail,
    required TResult orElse(),
  }) {
    if (getmoviedetail != null) {
      return getmoviedetail(movieparam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetail value) getmoviedetail,
  }) {
    return getmoviedetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getmoviedetail,
  }) {
    return getmoviedetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetail value)? getmoviedetail,
    required TResult orElse(),
  }) {
    if (getmoviedetail != null) {
      return getmoviedetail(this);
    }
    return orElse();
  }
}

abstract class _GetMovieDetail implements MovieDetailEvent {
  const factory _GetMovieDetail({required final String movieparam}) =
      _$_GetMovieDetail;

  @override
  String get movieparam;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieDetailCopyWith<_$_GetMovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MovieDetail> get moviedetail => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<MovieDetail>>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<MovieDetail> moviedetail,
      Option<Either<MainFailures, List<MovieDetail>>> options});
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  final MovieDetailState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? moviedetail = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      moviedetail: moviedetail == freezed
          ? _value.moviedetail
          : moviedetail // ignore: cast_nullable_to_non_nullable
              as List<MovieDetail>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MovieDetail>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$_MovieDetailStateCopyWith(
          _$_MovieDetailState value, $Res Function(_$_MovieDetailState) then) =
      __$$_MovieDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<MovieDetail> moviedetail,
      Option<Either<MainFailures, List<MovieDetail>>> options});
}

/// @nodoc
class __$$_MovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res>
    implements _$$_MovieDetailStateCopyWith<$Res> {
  __$$_MovieDetailStateCopyWithImpl(
      _$_MovieDetailState _value, $Res Function(_$_MovieDetailState) _then)
      : super(_value, (v) => _then(v as _$_MovieDetailState));

  @override
  _$_MovieDetailState get _value => super._value as _$_MovieDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? moviedetail = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_MovieDetailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      moviedetail: moviedetail == freezed
          ? _value._moviedetail
          : moviedetail // ignore: cast_nullable_to_non_nullable
              as List<MovieDetail>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MovieDetail>>>,
    ));
  }
}

/// @nodoc

class _$_MovieDetailState implements _MovieDetailState {
  const _$_MovieDetailState(
      {required this.isLoading,
      required final List<MovieDetail> moviedetail,
      required this.options})
      : _moviedetail = moviedetail;

  @override
  final bool isLoading;
  final List<MovieDetail> _moviedetail;
  @override
  List<MovieDetail> get moviedetail {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moviedetail);
  }

  @override
  final Option<Either<MainFailures, List<MovieDetail>>> options;

  @override
  String toString() {
    return 'MovieDetailState(isLoading: $isLoading, moviedetail: $moviedetail, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._moviedetail, _moviedetail) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_moviedetail),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDetailStateCopyWith<_$_MovieDetailState> get copyWith =>
      __$$_MovieDetailStateCopyWithImpl<_$_MovieDetailState>(this, _$identity);
}

abstract class _MovieDetailState implements MovieDetailState {
  const factory _MovieDetailState(
      {required final bool isLoading,
      required final List<MovieDetail> moviedetail,
      required final Option<Either<MainFailures, List<MovieDetail>>>
          options}) = _$_MovieDetailState;

  @override
  bool get isLoading;
  @override
  List<MovieDetail> get moviedetail;
  @override
  Option<Either<MainFailures, List<MovieDetail>>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailStateCopyWith<_$_MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
