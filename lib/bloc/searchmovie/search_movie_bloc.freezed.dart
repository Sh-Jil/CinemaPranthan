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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchMovieEvent {
  String get moviequery => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moviequery, int page) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String moviequery, int page)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moviequery, int page)? searchmovie,
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
  $Res call({String moviequery, int page});
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
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      moviequery: moviequery == freezed
          ? _value.moviequery
          : moviequery // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchMovieCopyWith<$Res>
    implements $SearchMovieEventCopyWith<$Res> {
  factory _$$_SearchMovieCopyWith(
          _$_SearchMovie value, $Res Function(_$_SearchMovie) then) =
      __$$_SearchMovieCopyWithImpl<$Res>;
  @override
  $Res call({String moviequery, int page});
}

/// @nodoc
class __$$_SearchMovieCopyWithImpl<$Res>
    extends _$SearchMovieEventCopyWithImpl<$Res>
    implements _$$_SearchMovieCopyWith<$Res> {
  __$$_SearchMovieCopyWithImpl(
      _$_SearchMovie _value, $Res Function(_$_SearchMovie) _then)
      : super(_value, (v) => _then(v as _$_SearchMovie));

  @override
  _$_SearchMovie get _value => super._value as _$_SearchMovie;

  @override
  $Res call({
    Object? moviequery = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_SearchMovie(
      moviequery: moviequery == freezed
          ? _value.moviequery
          : moviequery // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchMovie implements _SearchMovie {
  const _$_SearchMovie({required this.moviequery, required this.page});

  @override
  final String moviequery;
  @override
  final int page;

  @override
  String toString() {
    return 'SearchMovieEvent.searchmovie(moviequery: $moviequery, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchMovie &&
            const DeepCollectionEquality()
                .equals(other.moviequery, moviequery) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(moviequery),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_SearchMovieCopyWith<_$_SearchMovie> get copyWith =>
      __$$_SearchMovieCopyWithImpl<_$_SearchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String moviequery, int page) searchmovie,
  }) {
    return searchmovie(moviequery, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String moviequery, int page)? searchmovie,
  }) {
    return searchmovie?.call(moviequery, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String moviequery, int page)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(moviequery, page);
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
  const factory _SearchMovie(
      {required final String moviequery,
      required final int page}) = _$_SearchMovie;

  @override
  String get moviequery;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_SearchMovieCopyWith<_$_SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_SearchMovieStateCopyWith<$Res>
    implements $SearchMovieStateCopyWith<$Res> {
  factory _$$_SearchMovieStateCopyWith(
          _$_SearchMovieState value, $Res Function(_$_SearchMovieState) then) =
      __$$_SearchMovieStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<MovieModel> movies,
      Option<Either<MainFailures, List<MovieModel>>> options});
}

/// @nodoc
class __$$_SearchMovieStateCopyWithImpl<$Res>
    extends _$SearchMovieStateCopyWithImpl<$Res>
    implements _$$_SearchMovieStateCopyWith<$Res> {
  __$$_SearchMovieStateCopyWithImpl(
      _$_SearchMovieState _value, $Res Function(_$_SearchMovieState) _then)
      : super(_value, (v) => _then(v as _$_SearchMovieState));

  @override
  _$_SearchMovieState get _value => super._value as _$_SearchMovieState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movies = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_SearchMovieState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: movies == freezed
          ? _value._movies
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
      {required this.isLoading,
      required final List<MovieModel> movies,
      required this.options})
      : _movies = movies;

  @override
  final bool isLoading;
  final List<MovieModel> _movies;
  @override
  List<MovieModel> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

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
            other is _$_SearchMovieState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_SearchMovieStateCopyWith<_$_SearchMovieState> get copyWith =>
      __$$_SearchMovieStateCopyWithImpl<_$_SearchMovieState>(this, _$identity);
}

abstract class _SearchMovieState implements SearchMovieState {
  const factory _SearchMovieState(
      {required final bool isLoading,
      required final List<MovieModel> movies,
      required final Option<Either<MainFailures, List<MovieModel>>>
          options}) = _$_SearchMovieState;

  @override
  bool get isLoading;
  @override
  List<MovieModel> get movies;
  @override
  Option<Either<MainFailures, List<MovieModel>>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_SearchMovieStateCopyWith<_$_SearchMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
