// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'related_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RelatedMoviesEvent {
  int get movieid => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieid, int page) getrecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieid, int page)? getrecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieid, int page)? getrecommended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecommended value) getrecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecommended value)? getrecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecommended value)? getrecommended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelatedMoviesEventCopyWith<RelatedMoviesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedMoviesEventCopyWith<$Res> {
  factory $RelatedMoviesEventCopyWith(
          RelatedMoviesEvent value, $Res Function(RelatedMoviesEvent) then) =
      _$RelatedMoviesEventCopyWithImpl<$Res>;
  $Res call({int movieid, int page});
}

/// @nodoc
class _$RelatedMoviesEventCopyWithImpl<$Res>
    implements $RelatedMoviesEventCopyWith<$Res> {
  _$RelatedMoviesEventCopyWithImpl(this._value, this._then);

  final RelatedMoviesEvent _value;
  // ignore: unused_field
  final $Res Function(RelatedMoviesEvent) _then;

  @override
  $Res call({
    Object? movieid = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      movieid: movieid == freezed
          ? _value.movieid
          : movieid // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_GetRecommendedCopyWith<$Res>
    implements $RelatedMoviesEventCopyWith<$Res> {
  factory _$$_GetRecommendedCopyWith(
          _$_GetRecommended value, $Res Function(_$_GetRecommended) then) =
      __$$_GetRecommendedCopyWithImpl<$Res>;
  @override
  $Res call({int movieid, int page});
}

/// @nodoc
class __$$_GetRecommendedCopyWithImpl<$Res>
    extends _$RelatedMoviesEventCopyWithImpl<$Res>
    implements _$$_GetRecommendedCopyWith<$Res> {
  __$$_GetRecommendedCopyWithImpl(
      _$_GetRecommended _value, $Res Function(_$_GetRecommended) _then)
      : super(_value, (v) => _then(v as _$_GetRecommended));

  @override
  _$_GetRecommended get _value => super._value as _$_GetRecommended;

  @override
  $Res call({
    Object? movieid = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_GetRecommended(
      movieid: movieid == freezed
          ? _value.movieid
          : movieid // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetRecommended implements _GetRecommended {
  const _$_GetRecommended({required this.movieid, required this.page});

  @override
  final int movieid;
  @override
  final int page;

  @override
  String toString() {
    return 'RelatedMoviesEvent.getrecommended(movieid: $movieid, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRecommended &&
            const DeepCollectionEquality().equals(other.movieid, movieid) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieid),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_GetRecommendedCopyWith<_$_GetRecommended> get copyWith =>
      __$$_GetRecommendedCopyWithImpl<_$_GetRecommended>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieid, int page) getrecommended,
  }) {
    return getrecommended(movieid, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieid, int page)? getrecommended,
  }) {
    return getrecommended?.call(movieid, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieid, int page)? getrecommended,
    required TResult orElse(),
  }) {
    if (getrecommended != null) {
      return getrecommended(movieid, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecommended value) getrecommended,
  }) {
    return getrecommended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecommended value)? getrecommended,
  }) {
    return getrecommended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecommended value)? getrecommended,
    required TResult orElse(),
  }) {
    if (getrecommended != null) {
      return getrecommended(this);
    }
    return orElse();
  }
}

abstract class _GetRecommended implements RelatedMoviesEvent {
  const factory _GetRecommended(
      {required final int movieid,
      required final int page}) = _$_GetRecommended;

  @override
  int get movieid;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetRecommendedCopyWith<_$_GetRecommended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RelatedMoviesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MovieRelatedModel> get movies => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<MovieRelatedModel>>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RelatedMoviesStateCopyWith<RelatedMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedMoviesStateCopyWith<$Res> {
  factory $RelatedMoviesStateCopyWith(
          RelatedMoviesState value, $Res Function(RelatedMoviesState) then) =
      _$RelatedMoviesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<MovieRelatedModel> movies,
      Option<Either<MainFailures, List<MovieRelatedModel>>> option});
}

/// @nodoc
class _$RelatedMoviesStateCopyWithImpl<$Res>
    implements $RelatedMoviesStateCopyWith<$Res> {
  _$RelatedMoviesStateCopyWithImpl(this._value, this._then);

  final RelatedMoviesState _value;
  // ignore: unused_field
  final $Res Function(RelatedMoviesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movies = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieRelatedModel>,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MovieRelatedModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_RelatedMoviesStateCopyWith<$Res>
    implements $RelatedMoviesStateCopyWith<$Res> {
  factory _$$_RelatedMoviesStateCopyWith(_$_RelatedMoviesState value,
          $Res Function(_$_RelatedMoviesState) then) =
      __$$_RelatedMoviesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<MovieRelatedModel> movies,
      Option<Either<MainFailures, List<MovieRelatedModel>>> option});
}

/// @nodoc
class __$$_RelatedMoviesStateCopyWithImpl<$Res>
    extends _$RelatedMoviesStateCopyWithImpl<$Res>
    implements _$$_RelatedMoviesStateCopyWith<$Res> {
  __$$_RelatedMoviesStateCopyWithImpl(
      _$_RelatedMoviesState _value, $Res Function(_$_RelatedMoviesState) _then)
      : super(_value, (v) => _then(v as _$_RelatedMoviesState));

  @override
  _$_RelatedMoviesState get _value => super._value as _$_RelatedMoviesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movies = freezed,
    Object? option = freezed,
  }) {
    return _then(_$_RelatedMoviesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movies: movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieRelatedModel>,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<MovieRelatedModel>>>,
    ));
  }
}

/// @nodoc

class _$_RelatedMoviesState implements _RelatedMoviesState {
  const _$_RelatedMoviesState(
      {required this.isLoading,
      required final List<MovieRelatedModel> movies,
      required this.option})
      : _movies = movies;

  @override
  final bool isLoading;
  final List<MovieRelatedModel> _movies;
  @override
  List<MovieRelatedModel> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final Option<Either<MainFailures, List<MovieRelatedModel>>> option;

  @override
  String toString() {
    return 'RelatedMoviesState(isLoading: $isLoading, movies: $movies, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedMoviesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other.option, option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(option));

  @JsonKey(ignore: true)
  @override
  _$$_RelatedMoviesStateCopyWith<_$_RelatedMoviesState> get copyWith =>
      __$$_RelatedMoviesStateCopyWithImpl<_$_RelatedMoviesState>(
          this, _$identity);
}

abstract class _RelatedMoviesState implements RelatedMoviesState {
  const factory _RelatedMoviesState(
      {required final bool isLoading,
      required final List<MovieRelatedModel> movies,
      required final Option<Either<MainFailures, List<MovieRelatedModel>>>
          option}) = _$_RelatedMoviesState;

  @override
  bool get isLoading;
  @override
  List<MovieRelatedModel> get movies;
  @override
  Option<Either<MainFailures, List<MovieRelatedModel>>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedMoviesStateCopyWith<_$_RelatedMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}
