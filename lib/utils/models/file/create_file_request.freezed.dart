// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_file_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateFileRequest _$CreateFileRequestFromJson(Map<String, dynamic> json) {
  return _CreateFileRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateFileRequest {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  String get recipientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateFileRequestCopyWith<CreateFileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFileRequestCopyWith<$Res> {
  factory $CreateFileRequestCopyWith(
          CreateFileRequest value, $Res Function(CreateFileRequest) then) =
      _$CreateFileRequestCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String path,
      String extension,
      double size,
      String recipientId});
}

/// @nodoc
class _$CreateFileRequestCopyWithImpl<$Res>
    implements $CreateFileRequestCopyWith<$Res> {
  _$CreateFileRequestCopyWithImpl(this._value, this._then);

  final CreateFileRequest _value;
  // ignore: unused_field
  final $Res Function(CreateFileRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? extension = freezed,
    Object? size = freezed,
    Object? recipientId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      recipientId: recipientId == freezed
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateFileRequestCopyWith<$Res>
    implements $CreateFileRequestCopyWith<$Res> {
  factory _$$_CreateFileRequestCopyWith(_$_CreateFileRequest value,
          $Res Function(_$_CreateFileRequest) then) =
      __$$_CreateFileRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String path,
      String extension,
      double size,
      String recipientId});
}

/// @nodoc
class __$$_CreateFileRequestCopyWithImpl<$Res>
    extends _$CreateFileRequestCopyWithImpl<$Res>
    implements _$$_CreateFileRequestCopyWith<$Res> {
  __$$_CreateFileRequestCopyWithImpl(
      _$_CreateFileRequest _value, $Res Function(_$_CreateFileRequest) _then)
      : super(_value, (v) => _then(v as _$_CreateFileRequest));

  @override
  _$_CreateFileRequest get _value => super._value as _$_CreateFileRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? path = freezed,
    Object? extension = freezed,
    Object? size = freezed,
    Object? recipientId = freezed,
  }) {
    return _then(_$_CreateFileRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      recipientId: recipientId == freezed
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateFileRequest implements _CreateFileRequest {
  const _$_CreateFileRequest(
      {this.name = "",
      this.path = "",
      this.extension = "",
      this.size = 0,
      this.recipientId = ""});

  factory _$_CreateFileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateFileRequestFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final String extension;
  @override
  @JsonKey()
  final double size;
  @override
  @JsonKey()
  final String recipientId;

  @override
  String toString() {
    return 'CreateFileRequest(name: $name, path: $path, extension: $extension, size: $size, recipientId: $recipientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFileRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.extension, extension) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.recipientId, recipientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(extension),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(recipientId));

  @JsonKey(ignore: true)
  @override
  _$$_CreateFileRequestCopyWith<_$_CreateFileRequest> get copyWith =>
      __$$_CreateFileRequestCopyWithImpl<_$_CreateFileRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateFileRequestToJson(
      this,
    );
  }
}

abstract class _CreateFileRequest implements CreateFileRequest {
  const factory _CreateFileRequest(
      {final String name,
      final String path,
      final String extension,
      final double size,
      final String recipientId}) = _$_CreateFileRequest;

  factory _CreateFileRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateFileRequest.fromJson;

  @override
  String get name;
  @override
  String get path;
  @override
  String get extension;
  @override
  double get size;
  @override
  String get recipientId;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFileRequestCopyWith<_$_CreateFileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
