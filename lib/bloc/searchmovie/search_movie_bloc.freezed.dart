// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchMovieEventTearOff {
  const _$SearchMovieEventTearOff();

  _SearchMovie searchmovie({required String moviequery}) {
    return _SearchMovie(
      moviequery: moviequery,
    );
  }
}

/// @nodoc
const $SearchMovieEvent = _$SearchMovieEventTearOff();

/// @nodoc
mixin _$SearchMovieEvent {
  String get moviequery => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moviequery) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String moviequery)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moviequery)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMovie value) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMovieEventCopyWith<SearchMovieEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieEventCopyWith<$Res> {
  factory $SearchMovieEventCopyWith(
          SearchMovieEvent value, $Res Function(SearchMovieEvent) then) =
      _$SearchMovieEventCopyWithImpl<$Res>;
  $Res call({String moviequery});
}

/// @nodoc
class _$SearchMovieEventCopyWithImpl<$Res>
    implements $SearchMovieEventCopyWith<$Res> {
  _$SearchMovieEventCopyWithImpl(this._value, this._then);

  final SearchMovieEvent _value;
  // ignore: unused_field
  final $Res Function(SearchMovieEvent) _then;

  @override
  $Res call({
    Object? moviequery = freezed,
  }) {
    return _then(_value.copyWith(
      moviequery: moviequery == freezed
          ? _value.moviequery
          : moviequery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchMovieCopyWith<$Res>
    implements $SearchMovieEventCopyWith<$Res> {
  factory _$SearchMovieCopyWith(
          _SearchMovie value, $Res Function(_SearchMovie) then) =
      __$SearchMovieCopyWithImpl<$Res>;
  @override
  $Res call({String moviequery});
}

/// @nodoc
class __$SearchMovieCopyWithImpl<$Res>
    extends _$SearchMovieEventCopyWithImpl<$Res>
    implements _$SearchMovieCopyWith<$Res> {
  __$SearchMovieCopyWithImpl(
      _SearchMovie _value, $Res Function(_SearchMovie) _then)
      : super(_value, (v) => _then(v as _SearchMovie));

  @override
  _SearchMovie get _value => super._value as _SearchMovie;

  @override
  $Res call({
    Object? moviequery = freezed,
  }) {
    return _then(_SearchMovie(
      moviequery: moviequery == freezed
          ? _value.moviequery
          : moviequery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchMovie implements _SearchMovie {
  const _$_SearchMovie({required this.moviequery});

  @override
  final String moviequery;

  @override
  String toString() {
    return 'SearchMovieEvent.searchmovie(moviequery: $moviequery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchMovie &&
            const DeepCollectionEquality()
                .equals(other.moviequery, moviequery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(moviequery));

  @JsonKey(ignore: true)
  @override
  _$SearchMovieCopyWith<_SearchMovie> get copyWith =>
      __$SearchMovieCopyWithImpl<_SearchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moviequery) searchmovie,
  }) {
    return searchmovie(moviequery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String moviequery)? searchmovie,
  }) {
    return searchmovie?.call(moviequery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moviequery)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(moviequery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMovie value) searchmovie,
  }) {
    return searchmovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchmovie,
  }) {
    return searchmovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements SearchMovieEvent {
  const factory _SearchMovie({required String moviequery}) = _$_SearchMovie;

  @override
  String get moviequery;
  @override
  @JsonKey(ignore: true)
  _$SearchMovieCopyWith<_SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchMovieStateTearOff {
  const _$SearchMovieStateTearOff();

  _SearchMovieState call(
      {required bool isLoading,
      required List<MovieModel> movies,
      required Option<Either<MainFailures, List<MovieModel>>> options}) {
    return _SearchMovieState(
      isLoading: isLoading,
      movies: movies,
      options: options,
    );
  }
}

/// @nodoc
const $SearchMovieState = _$SearchMovieStateTearOff();

/// @nodoc
mixin _$SearchMovieState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MovieModel> get movies => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<MovieModel>>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMovieStateCopyWith<SearchMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieStateCopyWith<$Res> {
  factory $SearchMovieStateCopyWith(
          SearchMovieState value, $Res Function(SearchMovieState) then) =
      _$SearchMovieStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<MovieModel> movies,
      Option<Either<MainFailures, List<MovieModel>>> options});
}

/// @nodoc
class _$SearchMovieStateCopyWithImpl<$Res>
    implements $SearchMovieStateCopyWith<$Res> {
  _$SearchMovieStateCopyWithImpl(this._value, this._then);

  final SearchMovieState _value;
  // ignore: unused_field
  final $Res Function(SearchMovieState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movies = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MovieModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchMovieStateCopyWith<$Res>
    implements $SearchMovieStateCopyWith<$Res> {
  factory _$SearchMovieStateCopyWith(
          _SearchMovieState value, $Res Function(_SearchMovieState) then) =
      __$SearchMovieStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<MovieModel> movies,
      Option<Either<MainFailures, List<MovieModel>>> options});
}

/// @nodoc
class __$SearchMovieStateCopyWithImpl<$Res>
    extends _$SearchMovieStateCopyWithImpl<$Res>
    implements _$SearchMovieStateCopyWith<$Res> {
  __$SearchMovieStateCopyWithImpl(
      _SearchMovieState _value, $Res Function(_SearchMovieState) _then)
      : super(_value, (v) => _then(v as _SearchMovieState));

  @override
  _SearchMovieState get _value => super._value as _SearchMovieState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movies = freezed,
    Object? options = freezed,
  }) {
    return _then(_SearchMovieState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MovieModel>>>,
    ));
  }
}

/// @nodoc

class _$_SearchMovieState implements _SearchMovieState {
  const _$_SearchMovieState(
      {required this.isLoading, required this.movies, required this.options});

  @override
  final bool isLoading;
  @override
  final List<MovieModel> movies;
  @override
  final Option<Either<MainFailures, List<MovieModel>>> options;

  @override
  String toString() {
    return 'SearchMovieState(isLoading: $isLoading, movies: $movies, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchMovieState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$SearchMovieStateCopyWith<_SearchMovieState> get copyWith =>
      __$SearchMovieStateCopyWithImpl<_SearchMovieState>(this, _$identity);
}

abstract class _SearchMovieState implements SearchMovieState {
  const factory _SearchMovieState(
          {required bool isLoading,
          required List<MovieModel> movies,
          required Option<Either<MainFailures, List<MovieModel>>> options}) =
      _$_SearchMovieState;

  @override
  bool get isLoading;
  @override
  List<MovieModel> get movies;
  @override
  Option<Either<MainFailures, List<MovieModel>>> get options;
  @override
  @JsonKey(ignore: true)
  _$SearchMovieStateCopyWith<_SearchMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
