// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_chunk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileChunk _$FileChunkFromJson(Map<String, dynamic> json) {
  return _FileChunk.fromJson(json);
}

/// @nodoc
mixin _$FileChunk {
  String get fileId => throw _privateConstructorUsedError;
  String get chunk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileChunkCopyWith<FileChunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileChunkCopyWith<$Res> {
  factory $FileChunkCopyWith(FileChunk value, $Res Function(FileChunk) then) =
      _$FileChunkCopyWithImpl<$Res>;
  $Res call({String fileId, String chunk});
}

/// @nodoc
class _$FileChunkCopyWithImpl<$Res> implements $FileChunkCopyWith<$Res> {
  _$FileChunkCopyWithImpl(this._value, this._then);

  final FileChunk _value;
  // ignore: unused_field
  final $Res Function(FileChunk) _then;

  @override
  $Res call({
    Object? fileId = freezed,
    Object? chunk = freezed,
  }) {
    return _then(_value.copyWith(
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      chunk: chunk == freezed
          ? _value.chunk
          : chunk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FileChunkCopyWith<$Res> implements $FileChunkCopyWith<$Res> {
  factory _$$_FileChunkCopyWith(
          _$_FileChunk value, $Res Function(_$_FileChunk) then) =
      __$$_FileChunkCopyWithImpl<$Res>;
  @override
  $Res call({String fileId, String chunk});
}

/// @nodoc
class __$$_FileChunkCopyWithImpl<$Res> extends _$FileChunkCopyWithImpl<$Res>
    implements _$$_FileChunkCopyWith<$Res> {
  __$$_FileChunkCopyWithImpl(
      _$_FileChunk _value, $Res Function(_$_FileChunk) _then)
      : super(_value, (v) => _then(v as _$_FileChunk));

  @override
  _$_FileChunk get _value => super._value as _$_FileChunk;

  @override
  $Res call({
    Object? fileId = freezed,
    Object? chunk = freezed,
  }) {
    return _then(_$_FileChunk(
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      chunk: chunk == freezed
          ? _value.chunk
          : chunk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileChunk implements _FileChunk {
  const _$_FileChunk({this.fileId = "", this.chunk = ""});

  factory _$_FileChunk.fromJson(Map<String, dynamic> json) =>
      _$$_FileChunkFromJson(json);

  @override
  @JsonKey()
  final String fileId;
  @override
  @JsonKey()
  final String chunk;

  @override
  String toString() {
    return 'FileChunk(fileId: $fileId, chunk: $chunk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileChunk &&
            const DeepCollectionEquality().equals(other.fileId, fileId) &&
            const DeepCollectionEquality().equals(other.chunk, chunk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileId),
      const DeepCollectionEquality().hash(chunk));

  @JsonKey(ignore: true)
  @override
  _$$_FileChunkCopyWith<_$_FileChunk> get copyWith =>
      __$$_FileChunkCopyWithImpl<_$_FileChunk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileChunkToJson(
      this,
    );
  }
}

abstract class _FileChunk implements FileChunk {
  const factory _FileChunk({final String fileId, final String chunk}) =
      _$_FileChunk;

  factory _FileChunk.fromJson(Map<String, dynamic> json) =
      _$_FileChunk.fromJson;

  @override
  String get fileId;
  @override
  String get chunk;
  @override
  @JsonKey(ignore: true)
  _$$_FileChunkCopyWith<_$_FileChunk> get copyWith =>
      throw _privateConstructorUsedError;
}
