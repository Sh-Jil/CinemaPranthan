// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_related_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TvRelatedEvent {
  int get tvid => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tvid, int page) getrecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tvid, int page)? getrecommended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tvid, int page)? getrecommended,
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
  $TvRelatedEventCopyWith<TvRelatedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvRelatedEventCopyWith<$Res> {
  factory $TvRelatedEventCopyWith(
          TvRelatedEvent value, $Res Function(TvRelatedEvent) then) =
      _$TvRelatedEventCopyWithImpl<$Res>;
  $Res call({int tvid, int page});
}

/// @nodoc
class _$TvRelatedEventCopyWithImpl<$Res>
    implements $TvRelatedEventCopyWith<$Res> {
  _$TvRelatedEventCopyWithImpl(this._value, this._then);

  final TvRelatedEvent _value;
  // ignore: unused_field
  final $Res Function(TvRelatedEvent) _then;

  @override
  $Res call({
    Object? tvid = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
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
    implements $TvRelatedEventCopyWith<$Res> {
  factory _$$_GetRecommendedCopyWith(
          _$_GetRecommended value, $Res Function(_$_GetRecommended) then) =
      __$$_GetRecommendedCopyWithImpl<$Res>;
  @override
  $Res call({int tvid, int page});
}

/// @nodoc
class __$$_GetRecommendedCopyWithImpl<$Res>
    extends _$TvRelatedEventCopyWithImpl<$Res>
    implements _$$_GetRecommendedCopyWith<$Res> {
  __$$_GetRecommendedCopyWithImpl(
      _$_GetRecommended _value, $Res Function(_$_GetRecommended) _then)
      : super(_value, (v) => _then(v as _$_GetRecommended));

  @override
  _$_GetRecommended get _value => super._value as _$_GetRecommended;

  @override
  $Res call({
    Object? tvid = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_GetRecommended(
      tvid: tvid == freezed
          ? _value.tvid
          : tvid // ignore: cast_nullable_to_non_nullable
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
  const _$_GetRecommended({required this.tvid, required this.page});

  @override
  final int tvid;
  @override
  final int page;

  @override
  String toString() {
    return 'TvRelatedEvent.getrecommended(tvid: $tvid, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRecommended &&
            const DeepCollectionEquality().equals(other.tvid, tvid) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tvid),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_GetRecommendedCopyWith<_$_GetRecommended> get copyWith =>
      __$$_GetRecommendedCopyWithImpl<_$_GetRecommended>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tvid, int page) getrecommended,
  }) {
    return getrecommended(tvid, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tvid, int page)? getrecommended,
  }) {
    return getrecommended?.call(tvid, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tvid, int page)? getrecommended,
    required TResult orElse(),
  }) {
    if (getrecommended != null) {
      return getrecommended(tvid, page);
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

abstract class _GetRecommended implements TvRelatedEvent {
  const factory _GetRecommended(
      {required final int tvid, required final int page}) = _$_GetRecommended;

  @override
  int get tvid;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetRecommendedCopyWith<_$_GetRecommended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TvRelatedState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TvRelatedModel> get tvshows => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<TvRelatedModel>>> get options =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TvRelatedStateCopyWith<TvRelatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvRelatedStateCopyWith<$Res> {
  factory $TvRelatedStateCopyWith(
          TvRelatedState value, $Res Function(TvRelatedState) then) =
      _$TvRelatedStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<TvRelatedModel> tvshows,
      Option<Either<MainFailures, List<TvRelatedModel>>> options});
}

/// @nodoc
class _$TvRelatedStateCopyWithImpl<$Res>
    implements $TvRelatedStateCopyWith<$Res> {
  _$TvRelatedStateCopyWithImpl(this._value, this._then);

  final TvRelatedState _value;
  // ignore: unused_field
  final $Res Function(TvRelatedState) _then;

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
              as List<TvRelatedModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<TvRelatedModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_TvRelatedStateCopyWith<$Res>
    implements $TvRelatedStateCopyWith<$Res> {
  factory _$$_TvRelatedStateCopyWith(
          _$_TvRelatedState value, $Res Function(_$_TvRelatedState) then) =
      __$$_TvRelatedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<TvRelatedModel> tvshows,
      Option<Either<MainFailures, List<TvRelatedModel>>> options});
}

/// @nodoc
class __$$_TvRelatedStateCopyWithImpl<$Res>
    extends _$TvRelatedStateCopyWithImpl<$Res>
    implements _$$_TvRelatedStateCopyWith<$Res> {
  __$$_TvRelatedStateCopyWithImpl(
      _$_TvRelatedState _value, $Res Function(_$_TvRelatedState) _then)
      : super(_value, (v) => _then(v as _$_TvRelatedState));

  @override
  _$_TvRelatedState get _value => super._value as _$_TvRelatedState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? tvshows = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_TvRelatedState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      tvshows: tvshows == freezed
          ? _value._tvshows
          : tvshows // ignore: cast_nullable_to_non_nullable
              as List<TvRelatedModel>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<TvRelatedModel>>>,
    ));
  }
}

/// @nodoc

class _$_TvRelatedState implements _TvRelatedState {
  const _$_TvRelatedState(
      {required this.isLoading,
      required final List<TvRelatedModel> tvshows,
      required this.options})
      : _tvshows = tvshows;

  @override
  final bool isLoading;
  final List<TvRelatedModel> _tvshows;
  @override
  List<TvRelatedModel> get tvshows {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvshows);
  }

  @override
  final Option<Either<MainFailures, List<TvRelatedModel>>> options;

  @override
  String toString() {
    return 'TvRelatedState(isLoading: $isLoading, tvshows: $tvshows, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvRelatedState &&
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
  _$$_TvRelatedStateCopyWith<_$_TvRelatedState> get copyWith =>
      __$$_TvRelatedStateCopyWithImpl<_$_TvRelatedState>(this, _$identity);
}

abstract class _TvRelatedState implements TvRelatedState {
  const factory _TvRelatedState(
      {required final bool isLoading,
      required final List<TvRelatedModel> tvshows,
      required final Option<Either<MainFailures, List<TvRelatedModel>>>
          options}) = _$_TvRelatedState;

  @override
  bool get isLoading;
  @override
  List<TvRelatedModel> get tvshows;
  @override
  Option<Either<MainFailures, List<TvRelatedModel>>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_TvRelatedStateCopyWith<_$_TvRelatedState> get copyWith =>
      throw _privateConstructorUsedError;
}
