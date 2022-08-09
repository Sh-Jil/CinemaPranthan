// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authfailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledbyuser,
    required TResult Function() servererror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledbyuser,
    TResult Function()? servererror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledbyuser,
    TResult Function()? servererror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledbyuser,
    required TResult Function(_ServerError value) servererror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledbyuser,
    TResult Function(_ServerError value)? servererror,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledbyuser,
    TResult Function(_ServerError value)? servererror,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$$_CancelledByUserCopyWith<$Res> {
  factory _$$_CancelledByUserCopyWith(
          _$_CancelledByUser value, $Res Function(_$_CancelledByUser) then) =
      __$$_CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_CancelledByUserCopyWith<$Res> {
  __$$_CancelledByUserCopyWithImpl(
      _$_CancelledByUser _value, $Res Function(_$_CancelledByUser) _then)
      : super(_value, (v) => _then(v as _$_CancelledByUser));

  @override
  _$_CancelledByUser get _value => super._value as _$_CancelledByUser;
}

/// @nodoc

class _$_CancelledByUser implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledbyuser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledbyuser,
    required TResult Function() servererror,
  }) {
    return cancelledbyuser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledbyuser,
    TResult Function()? servererror,
  }) {
    return cancelledbyuser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledbyuser,
    TResult Function()? servererror,
    required TResult orElse(),
  }) {
    if (cancelledbyuser != null) {
      return cancelledbyuser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledbyuser,
    required TResult Function(_ServerError value) servererror,
  }) {
    return cancelledbyuser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledbyuser,
    TResult Function(_ServerError value)? servererror,
  }) {
    return cancelledbyuser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledbyuser,
    TResult Function(_ServerError value)? servererror,
    required TResult orElse(),
  }) {
    if (cancelledbyuser != null) {
      return cancelledbyuser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements AuthFailure {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.servererror()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledbyuser,
    required TResult Function() servererror,
  }) {
    return servererror();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cancelledbyuser,
    TResult Function()? servererror,
  }) {
    return servererror?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledbyuser,
    TResult Function()? servererror,
    required TResult orElse(),
  }) {
    if (servererror != null) {
      return servererror();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CancelledByUser value) cancelledbyuser,
    required TResult Function(_ServerError value) servererror,
  }) {
    return servererror(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledbyuser,
    TResult Function(_ServerError value)? servererror,
  }) {
    return servererror?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CancelledByUser value)? cancelledbyuser,
    TResult Function(_ServerError value)? servererror,
    required TResult orElse(),
  }) {
    if (servererror != null) {
      return servererror(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}
