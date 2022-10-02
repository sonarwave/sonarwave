// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_file_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateFileRequest _$UpdateFileRequestFromJson(Map<String, dynamic> json) {
  return _UpdateFileRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateFileRequest {
  String get id => throw _privateConstructorUsedError;
  TransferAcceptance get acceptance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFileRequestCopyWith<UpdateFileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFileRequestCopyWith<$Res> {
  factory $UpdateFileRequestCopyWith(
          UpdateFileRequest value, $Res Function(UpdateFileRequest) then) =
      _$UpdateFileRequestCopyWithImpl<$Res>;
  $Res call({String id, TransferAcceptance acceptance});
}

/// @nodoc
class _$UpdateFileRequestCopyWithImpl<$Res>
    implements $UpdateFileRequestCopyWith<$Res> {
  _$UpdateFileRequestCopyWithImpl(this._value, this._then);

  final UpdateFileRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateFileRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? acceptance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      acceptance: acceptance == freezed
          ? _value.acceptance
          : acceptance // ignore: cast_nullable_to_non_nullable
              as TransferAcceptance,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateFileRequestCopyWith<$Res>
    implements $UpdateFileRequestCopyWith<$Res> {
  factory _$$_UpdateFileRequestCopyWith(_$_UpdateFileRequest value,
          $Res Function(_$_UpdateFileRequest) then) =
      __$$_UpdateFileRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id, TransferAcceptance acceptance});
}

/// @nodoc
class __$$_UpdateFileRequestCopyWithImpl<$Res>
    extends _$UpdateFileRequestCopyWithImpl<$Res>
    implements _$$_UpdateFileRequestCopyWith<$Res> {
  __$$_UpdateFileRequestCopyWithImpl(
      _$_UpdateFileRequest _value, $Res Function(_$_UpdateFileRequest) _then)
      : super(_value, (v) => _then(v as _$_UpdateFileRequest));

  @override
  _$_UpdateFileRequest get _value => super._value as _$_UpdateFileRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? acceptance = freezed,
  }) {
    return _then(_$_UpdateFileRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      acceptance: acceptance == freezed
          ? _value.acceptance
          : acceptance // ignore: cast_nullable_to_non_nullable
              as TransferAcceptance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateFileRequest implements _UpdateFileRequest {
  const _$_UpdateFileRequest(
      {this.id = "", this.acceptance = TransferAcceptance.initial});

  factory _$_UpdateFileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateFileRequestFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final TransferAcceptance acceptance;

  @override
  String toString() {
    return 'UpdateFileRequest(id: $id, acceptance: $acceptance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFileRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.acceptance, acceptance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(acceptance));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateFileRequestCopyWith<_$_UpdateFileRequest> get copyWith =>
      __$$_UpdateFileRequestCopyWithImpl<_$_UpdateFileRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateFileRequestToJson(
      this,
    );
  }
}

abstract class _UpdateFileRequest implements UpdateFileRequest {
  const factory _UpdateFileRequest(
      {final String id,
      final TransferAcceptance acceptance}) = _$_UpdateFileRequest;

  factory _UpdateFileRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateFileRequest.fromJson;

  @override
  String get id;
  @override
  TransferAcceptance get acceptance;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFileRequestCopyWith<_$_UpdateFileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
