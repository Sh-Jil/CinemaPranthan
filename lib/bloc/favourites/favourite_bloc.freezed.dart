// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getfavourites,
    required TResult Function(bool ismovie, int id) removefavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getfavourites,
    TResult Function(bool ismovie, int id)? removefavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getfavourites,
    TResult Function(bool ismovie, int id)? removefavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getfavourites,
    required TResult Function(_Remove value) removefavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? getfavourites,
    TResult Function(_Remove value)? removefavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getfavourites,
    TResult Function(_Remove value)? removefavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteEventCopyWith<$Res> {
  factory $FavouriteEventCopyWith(
          FavouriteEvent value, $Res Function(FavouriteEvent) then) =
      _$FavouriteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouriteEventCopyWithImpl<$Res>
    implements $FavouriteEventCopyWith<$Res> {
  _$FavouriteEventCopyWithImpl(this._value, this._then);

  final FavouriteEvent _value;
  // ignore: unused_field
  final $Res Function(FavouriteEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$FavouriteEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'FavouriteEvent.getfavourites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getfavourites,
    required TResult Function(bool ismovie, int id) removefavorite,
  }) {
    return getfavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getfavourites,
    TResult Function(bool ismovie, int id)? removefavorite,
  }) {
    return getfavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getfavourites,
    TResult Function(bool ismovie, int id)? removefavorite,
    required TResult orElse(),
  }) {
    if (getfavourites != null) {
      return getfavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getfavourites,
    required TResult Function(_Remove value) removefavorite,
  }) {
    return getfavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? getfavourites,
    TResult Function(_Remove value)? removefavorite,
  }) {
    return getfavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getfavourites,
    TResult Function(_Remove value)? removefavorite,
    required TResult orElse(),
  }) {
    if (getfavourites != null) {
      return getfavourites(this);
    }
    return orElse();
  }
}

abstract class _Started implements FavouriteEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_RemoveCopyWith<$Res> {
  factory _$$_RemoveCopyWith(_$_Remove value, $Res Function(_$_Remove) then) =
      __$$_RemoveCopyWithImpl<$Res>;
  $Res call({bool ismovie, int id});
}

/// @nodoc
class __$$_RemoveCopyWithImpl<$Res> extends _$FavouriteEventCopyWithImpl<$Res>
    implements _$$_RemoveCopyWith<$Res> {
  __$$_RemoveCopyWithImpl(_$_Remove _value, $Res Function(_$_Remove) _then)
      : super(_value, (v) => _then(v as _$_Remove));

  @override
  _$_Remove get _value => super._value as _$_Remove;

  @override
  $Res call({
    Object? ismovie = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Remove(
      ismovie: ismovie == freezed
          ? _value.ismovie
          : ismovie // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove({required this.ismovie, required this.id});

  @override
  final bool ismovie;
  @override
  final int id;

  @override
  String toString() {
    return 'FavouriteEvent.removefavorite(ismovie: $ismovie, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Remove &&
            const DeepCollectionEquality().equals(other.ismovie, ismovie) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ismovie),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      __$$_RemoveCopyWithImpl<_$_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getfavourites,
    required TResult Function(bool ismovie, int id) removefavorite,
  }) {
    return removefavorite(ismovie, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getfavourites,
    TResult Function(bool ismovie, int id)? removefavorite,
  }) {
    return removefavorite?.call(ismovie, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getfavourites,
    TResult Function(bool ismovie, int id)? removefavorite,
    required TResult orElse(),
  }) {
    if (removefavorite != null) {
      return removefavorite(ismovie, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getfavourites,
    required TResult Function(_Remove value) removefavorite,
  }) {
    return removefavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? getfavourites,
    TResult Function(_Remove value)? removefavorite,
  }) {
    return removefavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getfavourites,
    TResult Function(_Remove value)? removefavorite,
    required TResult orElse(),
  }) {
    if (removefavorite != null) {
      return removefavorite(this);
    }
    return orElse();
  }
}

abstract class _Remove implements FavouriteEvent {
  const factory _Remove({required final bool ismovie, required final int id}) =
      _$_Remove;

  bool get ismovie;
  int get id;
  @JsonKey(ignore: true)
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouriteState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Favourites> get favlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteStateCopyWith<FavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Favourites> favlist});
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  final FavouriteState _value;
  // ignore: unused_field
  final $Res Function(FavouriteState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favlist = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favlist: favlist == freezed
          ? _value.favlist
          : favlist // ignore: cast_nullable_to_non_nullable
              as List<Favourites>,
    ));
  }
}

/// @nodoc
abstract class _$$_FavouriteStateCopyWith<$Res>
    implements $FavouriteStateCopyWith<$Res> {
  factory _$$_FavouriteStateCopyWith(
          _$_FavouriteState value, $Res Function(_$_FavouriteState) then) =
      __$$_FavouriteStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Favourites> favlist});
}

/// @nodoc
class __$$_FavouriteStateCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res>
    implements _$$_FavouriteStateCopyWith<$Res> {
  __$$_FavouriteStateCopyWithImpl(
      _$_FavouriteState _value, $Res Function(_$_FavouriteState) _then)
      : super(_value, (v) => _then(v as _$_FavouriteState));

  @override
  _$_FavouriteState get _value => super._value as _$_FavouriteState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? favlist = freezed,
  }) {
    return _then(_$_FavouriteState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favlist: favlist == freezed
          ? _value._favlist
          : favlist // ignore: cast_nullable_to_non_nullable
              as List<Favourites>,
    ));
  }
}

/// @nodoc

class _$_FavouriteState implements _FavouriteState {
  const _$_FavouriteState(
      {required this.isLoading, required final List<Favourites> favlist})
      : _favlist = favlist;

  @override
  final bool isLoading;
  final List<Favourites> _favlist;
  @override
  List<Favourites> get favlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favlist);
  }

  @override
  String toString() {
    return 'FavouriteState(isLoading: $isLoading, favlist: $favlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouriteState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._favlist, _favlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_favlist));

  @JsonKey(ignore: true)
  @override
  _$$_FavouriteStateCopyWith<_$_FavouriteState> get copyWith =>
      __$$_FavouriteStateCopyWithImpl<_$_FavouriteState>(this, _$identity);
}

abstract class _FavouriteState implements FavouriteState {
  const factory _FavouriteState(
      {required final bool isLoading,
      required final List<Favourites> favlist}) = _$_FavouriteState;

  @override
  bool get isLoading;
  @override
  List<Favourites> get favlist;
  @override
  @JsonKey(ignore: true)
  _$$_FavouriteStateCopyWith<_$_FavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
