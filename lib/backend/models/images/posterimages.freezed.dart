// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posterimages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PosterModel _$PosterModelFromJson(Map<String, dynamic> json) {
  return _PosterModel.fromJson(json);
}

/// @nodoc
mixin _$PosterModel {
  @JsonKey(name: "file_path")
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosterModelCopyWith<PosterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterModelCopyWith<$Res> {
  factory $PosterModelCopyWith(
          PosterModel value, $Res Function(PosterModel) then) =
      _$PosterModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "file_path") String filePath});
}

/// @nodoc
class _$PosterModelCopyWithImpl<$Res> implements $PosterModelCopyWith<$Res> {
  _$PosterModelCopyWithImpl(this._value, this._then);

  final PosterModel _value;
  // ignore: unused_field
  final $Res Function(PosterModel) _then;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PosterModelCopyWith<$Res>
    implements $PosterModelCopyWith<$Res> {
  factory _$$_PosterModelCopyWith(
          _$_PosterModel value, $Res Function(_$_PosterModel) then) =
      __$$_PosterModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "file_path") String filePath});
}

/// @nodoc
class __$$_PosterModelCopyWithImpl<$Res> extends _$PosterModelCopyWithImpl<$Res>
    implements _$$_PosterModelCopyWith<$Res> {
  __$$_PosterModelCopyWithImpl(
      _$_PosterModel _value, $Res Function(_$_PosterModel) _then)
      : super(_value, (v) => _then(v as _$_PosterModel));

  @override
  _$_PosterModel get _value => super._value as _$_PosterModel;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(_$_PosterModel(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PosterModel implements _PosterModel {
  const _$_PosterModel({@JsonKey(name: "file_path") required this.filePath});

  factory _$_PosterModel.fromJson(Map<String, dynamic> json) =>
      _$$_PosterModelFromJson(json);

  @override
  @JsonKey(name: "file_path")
  final String filePath;

  @override
  String toString() {
    return 'PosterModel(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosterModel &&
            const DeepCollectionEquality().equals(other.filePath, filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filePath));

  @JsonKey(ignore: true)
  @override
  _$$_PosterModelCopyWith<_$_PosterModel> get copyWith =>
      __$$_PosterModelCopyWithImpl<_$_PosterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosterModelToJson(
      this,
    );
  }
}

abstract class _PosterModel implements PosterModel {
  const factory _PosterModel(
          {@JsonKey(name: "file_path") required final String filePath}) =
      _$_PosterModel;

  factory _PosterModel.fromJson(Map<String, dynamic> json) =
      _$_PosterModel.fromJson;

  @override
  @JsonKey(name: "file_path")
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_PosterModelCopyWith<_$_PosterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
