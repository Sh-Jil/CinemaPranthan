// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionEvent {
  int get collectionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int collectionId) getmovieseries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int collectionId)? getmovieseries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int collectionId)? getmovieseries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieSeries value) getmovieseries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieSeries value)? getmovieseries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieSeries value)? getmovieseries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionEventCopyWith<CollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEventCopyWith<$Res> {
  factory $CollectionEventCopyWith(
          CollectionEvent value, $Res Function(CollectionEvent) then) =
      _$CollectionEventCopyWithImpl<$Res>;
  $Res call({int collectionId});
}

/// @nodoc
class _$CollectionEventCopyWithImpl<$Res>
    implements $CollectionEventCopyWith<$Res> {
  _$CollectionEventCopyWithImpl(this._value, this._then);

  final CollectionEvent _value;
  // ignore: unused_field
  final $Res Function(CollectionEvent) _then;

  @override
  $Res call({
    Object? collectionId = freezed,
  }) {
    return _then(_value.copyWith(
      collectionId: collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_GetMovieSeriesCopyWith<$Res>
    implements $CollectionEventCopyWith<$Res> {
  factory _$$_GetMovieSeriesCopyWith(
          _$_GetMovieSeries value, $Res Function(_$_GetMovieSeries) then) =
      __$$_GetMovieSeriesCopyWithImpl<$Res>;
  @override
  $Res call({int collectionId});
}

/// @nodoc
class __$$_GetMovieSeriesCopyWithImpl<$Res>
    extends _$CollectionEventCopyWithImpl<$Res>
    implements _$$_GetMovieSeriesCopyWith<$Res> {
  __$$_GetMovieSeriesCopyWithImpl(
      _$_GetMovieSeries _value, $Res Function(_$_GetMovieSeries) _then)
      : super(_value, (v) => _then(v as _$_GetMovieSeries));

  @override
  _$_GetMovieSeries get _value => super._value as _$_GetMovieSeries;

  @override
  $Res call({
    Object? collectionId = freezed,
  }) {
    return _then(_$_GetMovieSeries(
      collectionId: collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetMovieSeries implements _GetMovieSeries {
  const _$_GetMovieSeries({required this.collectionId});

  @override
  final int collectionId;

  @override
  String toString() {
    return 'CollectionEvent.getmovieseries(collectionId: $collectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieSeries &&
            const DeepCollectionEquality()
                .equals(other.collectionId, collectionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(collectionId));

  @JsonKey(ignore: true)
  @override
  _$$_GetMovieSeriesCopyWith<_$_GetMovieSeries> get copyWith =>
      __$$_GetMovieSeriesCopyWithImpl<_$_GetMovieSeries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int collectionId) getmovieseries,
  }) {
    return getmovieseries(collectionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int collectionId)? getmovieseries,
  }) {
    return getmovieseries?.call(collectionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int collectionId)? getmovieseries,
    required TResult orElse(),
  }) {
    if (getmovieseries != null) {
      return getmovieseries(collectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieSeries value) getmovieseries,
  }) {
    return getmovieseries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetMovieSeries value)? getmovieseries,
  }) {
    return getmovieseries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieSeries value)? getmovieseries,
    required TResult orElse(),
  }) {
    if (getmovieseries != null) {
      return getmovieseries(this);
    }
    return orElse();
  }
}

abstract class _GetMovieSeries implements CollectionEvent {
  const factory _GetMovieSeries({required final int collectionId}) =
      _$_GetMovieSeries;

  @override
  int get collectionId;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieSeriesCopyWith<_$_GetMovieSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectionState {
  bool get isLoading => throw _privateConstructorUsedError;
  CollectionModel get movieseries => throw _privateConstructorUsedError;
  Option<Either<MainFailures, CollectionModel>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectionStateCopyWith<CollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      CollectionModel movieseries,
      Option<Either<MainFailures, CollectionModel>> options});

  $CollectionModelCopyWith<$Res> get movieseries;
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  final CollectionState _value;
  // ignore: unused_field
  final $Res Function(CollectionState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movieseries = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieseries: movieseries == freezed
          ? _value.movieseries
          : movieseries // ignore: cast_nullable_to_non_nullable
              as CollectionModel,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, CollectionModel>>,
    ));
  }

  @override
  $CollectionModelCopyWith<$Res> get movieseries {
    return $CollectionModelCopyWith<$Res>(_value.movieseries, (value) {
      return _then(_value.copyWith(movieseries: value));
    });
  }
}

/// @nodoc
abstract class _$$_CollectionStateCopyWith<$Res>
    implements $CollectionStateCopyWith<$Res> {
  factory _$$_CollectionStateCopyWith(
          _$_CollectionState value, $Res Function(_$_CollectionState) then) =
      __$$_CollectionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      CollectionModel movieseries,
      Option<Either<MainFailures, CollectionModel>> options});

  @override
  $CollectionModelCopyWith<$Res> get movieseries;
}

/// @nodoc
class __$$_CollectionStateCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res>
    implements _$$_CollectionStateCopyWith<$Res> {
  __$$_CollectionStateCopyWithImpl(
      _$_CollectionState _value, $Res Function(_$_CollectionState) _then)
      : super(_value, (v) => _then(v as _$_CollectionState));

  @override
  _$_CollectionState get _value => super._value as _$_CollectionState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? movieseries = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_CollectionState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieseries: movieseries == freezed
          ? _value.movieseries
          : movieseries // ignore: cast_nullable_to_non_nullable
              as CollectionModel,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, CollectionModel>>,
    ));
  }
}

/// @nodoc

class _$_CollectionState implements _CollectionState {
  const _$_CollectionState(
      {required this.isLoading,
      required this.movieseries,
      required this.options});

  @override
  final bool isLoading;
  @override
  final CollectionModel movieseries;
  @override
  final Option<Either<MainFailures, CollectionModel>> options;

  @override
  String toString() {
    return 'CollectionState(isLoading: $isLoading, movieseries: $movieseries, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.movieseries, movieseries) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(movieseries),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_CollectionStateCopyWith<_$_CollectionState> get copyWith =>
      __$$_CollectionStateCopyWithImpl<_$_CollectionState>(this, _$identity);
}

abstract class _CollectionState implements CollectionState {
  const factory _CollectionState(
      {required final bool isLoading,
      required final CollectionModel movieseries,
      required final Option<Either<MainFailures, CollectionModel>>
          options}) = _$_CollectionState;

  @override
  bool get isLoading;
  @override
  CollectionModel get movieseries;
  @override
  Option<Either<MainFailures, CollectionModel>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionStateCopyWith<_$_CollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
