// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poster_images_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosterImagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieid) getmovieimages,
    required TResult Function(int tvid) gettvimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieid)? getmovieimages,
    TResult Function(int tvid)? gettvimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieid)? getmovieimages,
    TResult Function(int tvid)? gettvimages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieImages value) getmovieimages,
    required TResult Function(_GetTvImages value) gettvimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieImages value)? getmovieimages,
    TResult Function(_GetTvImages value)? gettvimages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieImages value)? getmovieimages,
    TResult Function(_GetTvImages value)? gettvimages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterImagesEventCopyWith<$Res> {
  factory $PosterImagesEventCopyWith(
          PosterImagesEvent value, $Res Function(PosterImagesEvent) then) =
      _$PosterImagesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PosterImagesEventCopyWithImpl<$Res>
    implements $PosterImagesEventCopyWith<$Res> {
  _$PosterImagesEventCopyWithImpl(this._value, this._then);

  final PosterImagesEvent _value;
  // ignore: unused_field
  final $Res Function(PosterImagesEvent) _then;
}

/// @nodoc
abstract class _$$_GetMovieImagesCopyWith<$Res> {
  factory _$$_GetMovieImagesCopyWith(
          _$_GetMovieImages value, $Res Function(_$_GetMovieImages) then) =
      __$$_GetMovieImagesCopyWithImpl<$Res>;
  $Res call({int movieid});
}

/// @nodoc
class __$$_GetMovieImagesCopyWithImpl<$Res>
    extends _$PosterImagesEventCopyWithImpl<$Res>
    implements _$$_GetMovieImagesCopyWith<$Res> {
  __$$_GetMovieImagesCopyWithImpl(
      _$_GetMovieImages _value, $Res Function(_$_GetMovieImages) _then)
      : super(_value, (v) => _then(v as _$_GetMovieImages));

  @override
  _$_GetMovieImages get _value => super._value as _$_GetMovieImages;

  @override
  $Res call({
    Object? movieid = freezed,
  }) {
    return _then(_$_GetMovieImages(
      movieid: movieid == freezed
          ? _value.movieid
          : movieid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetMovieImages implements _GetMovieImages {
  const _$_GetMovieImages({required this.movieid});

  @override
  final int movieid;

  @override
  String toString() {
    return 'PosterImagesEvent.getmovieimages(movieid: $movieid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieImages &&
            const DeepCollectionEquality().equals(other.movieid, movieid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieid));

  @JsonKey(ignore: true)
  @override
  _$$_GetMovieImagesCopyWith<_$_GetMovieImages> get copyWith =>
      __$$_GetMovieImagesCopyWithImpl<_$_GetMovieImages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieid) getmovieimages,
    required TResult Function(int tvid) gettvimages,
  }) {
    return getmovieimages(movieid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieid)? getmovieimages,
    TResult Function(int tvid)? gettvimages,
  }) {
    return getmovieimages?.call(movieid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieid)? getmovieimages,
    TResult Function(int tvid)? gettvimages,
    required TResult orElse(),
  }) {
    if (getmovieimages != null) {
      return getmovieimages(movieid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieImages value) getmovieimages,
    required TResult Function(_GetTvImages value) gettvimages,
  }) {
    return getmovieimages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieImages value)? getmovieimages,
    TResult Function(_GetTvImages value)? gettvimages,
  }) {
    return getmovieimages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieImages value)? getmovieimages,
    TResult Function(_GetTvImages value)? gettvimages,
    required TResult orElse(),
  }) {
    if (getmovieimages != null) {
      return getmovieimages(this);
    }
    return orElse();
  }
}

abstract class _GetMovieImages implements PosterImagesEvent {
  const factory _GetMovieImages({required final int movieid}) =
      _$_GetMovieImages;

  int get movieid;
  @JsonKey(ignore: true)
  _$$_GetMovieImagesCopyWith<_$_GetMovieImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTvImagesCopyWith<$Res> {
  factory _$$_GetTvImagesCopyWith(
          _$_GetTvImages value, $Res Function(_$_GetTvImages) then) =
      __$$_GetTvImagesCopyWithImpl<$Res>;
  $Res call({int tvid});
}

/// @nodoc
class __$$_GetTvImagesCopyWithImpl<$Res>
    extends _$PosterImagesEventCopyWithImpl<$Res>
    implements _$$_GetTvImagesCopyWith<$Res> {
  __$$_GetTvImagesCopyWithImpl(
      _$_GetTvImages _value, $Res Function(_$_GetTvImages) _then)
      : super(_value, (v) => _then(v as _$_GetTvImages));

  @override
  _$_GetTvImages get _value => super._value as _$_GetTvImages;

  @override
  $Res call({
    Object? tvid = freezed,
  }) {
    return _then(_$_GetTvImages(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTvImages implements _GetTvImages {
  const _$_GetTvImages({required this.tvid});

  @override
  final int tvid;

  @override
  String toString() {
    return 'PosterImagesEvent.gettvimages(tvid: $tvid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTvImages &&
            const DeepCollectionEquality().equals(other.tvid, tvid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tvid));

  @JsonKey(ignore: true)
  @override
  _$$_GetTvImagesCopyWith<_$_GetTvImages> get copyWith =>
      __$$_GetTvImagesCopyWithImpl<_$_GetTvImages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieid) getmovieimages,
    required TResult Function(int tvid) gettvimages,
  }) {
    return gettvimages(tvid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieid)? getmovieimages,
    TResult Function(int tvid)? gettvimages,
  }) {
    return gettvimages?.call(tvid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieid)? getmovieimages,
    TResult Function(int tvid)? gettvimages,
    required TResult orElse(),
  }) {
    if (gettvimages != null) {
      return gettvimages(tvid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieImages value) getmovieimages,
    required TResult Function(_GetTvImages value) gettvimages,
  }) {
    return gettvimages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieImages value)? getmovieimages,
    TResult Function(_GetTvImages value)? gettvimages,
  }) {
    return gettvimages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieImages value)? getmovieimages,
    TResult Function(_GetTvImages value)? gettvimages,
    required TResult orElse(),
  }) {
    if (gettvimages != null) {
      return gettvimages(this);
    }
    return orElse();
  }
}

abstract class _GetTvImages implements PosterImagesEvent {
  const factory _GetTvImages({required final int tvid}) = _$_GetTvImages;

  int get tvid;
  @JsonKey(ignore: true)
  _$$_GetTvImagesCopyWith<_$_GetTvImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PosterImagesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PosterModel> get imagelist => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<PosterModel>>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosterImagesStateCopyWith<PosterImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterImagesStateCopyWith<$Res> {
  factory $PosterImagesStateCopyWith(
          PosterImagesState value, $Res Function(PosterImagesState) then) =
      _$PosterImagesStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<PosterModel> imagelist,
      Option<Either<MainFailures, List<PosterModel>>> options});
}

/// @nodoc
class _$PosterImagesStateCopyWithImpl<$Res>
    implements $PosterImagesStateCopyWith<$Res> {
  _$PosterImagesStateCopyWithImpl(this._value, this._then);

  final PosterImagesState _value;
  // ignore: unused_field
  final $Res Function(PosterImagesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? imagelist = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      imagelist: imagelist == freezed
          ? _value.imagelist
          : imagelist // ignore: cast_nullable_to_non_nullable
              as List<PosterModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PosterModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_PosterImagesStateCopyWith<$Res>
    implements $PosterImagesStateCopyWith<$Res> {
  factory _$$_PosterImagesStateCopyWith(_$_PosterImagesState value,
          $Res Function(_$_PosterImagesState) then) =
      __$$_PosterImagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<PosterModel> imagelist,
      Option<Either<MainFailures, List<PosterModel>>> options});
}

/// @nodoc
class __$$_PosterImagesStateCopyWithImpl<$Res>
    extends _$PosterImagesStateCopyWithImpl<$Res>
    implements _$$_PosterImagesStateCopyWith<$Res> {
  __$$_PosterImagesStateCopyWithImpl(
      _$_PosterImagesState _value, $Res Function(_$_PosterImagesState) _then)
      : super(_value, (v) => _then(v as _$_PosterImagesState));

  @override
  _$_PosterImagesState get _value => super._value as _$_PosterImagesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? imagelist = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_PosterImagesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      imagelist: imagelist == freezed
          ? _value._imagelist
          : imagelist // ignore: cast_nullable_to_non_nullable
              as List<PosterModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<PosterModel>>>,
    ));
  }
}

/// @nodoc

class _$_PosterImagesState implements _PosterImagesState {
  const _$_PosterImagesState(
      {required this.isLoading,
      required final List<PosterModel> imagelist,
      required this.options})
      : _imagelist = imagelist;

  @override
  final bool isLoading;
  final List<PosterModel> _imagelist;
  @override
  List<PosterModel> get imagelist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagelist);
  }

  @override
  final Option<Either<MainFailures, List<PosterModel>>> options;

  @override
  String toString() {
    return 'PosterImagesState(isLoading: $isLoading, imagelist: $imagelist, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosterImagesState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._imagelist, _imagelist) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_imagelist),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_PosterImagesStateCopyWith<_$_PosterImagesState> get copyWith =>
      __$$_PosterImagesStateCopyWithImpl<_$_PosterImagesState>(
          this, _$identity);
}

abstract class _PosterImagesState implements PosterImagesState {
  const factory _PosterImagesState(
      {required final bool isLoading,
      required final List<PosterModel> imagelist,
      required final Option<Either<MainFailures, List<PosterModel>>>
          options}) = _$_PosterImagesState;

  @override
  bool get isLoading;
  @override
  List<PosterModel> get imagelist;
  @override
  Option<Either<MainFailures, List<PosterModel>>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_PosterImagesStateCopyWith<_$_PosterImagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
