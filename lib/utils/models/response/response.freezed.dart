// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  bool get succeeded => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call(
      {bool succeeded,
      Map<String, dynamic> data,
      String message,
      int statusCode});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object? succeeded = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      succeeded: succeeded == freezed
          ? _value.succeeded
          : succeeded // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$$_ResponseCopyWith(
          _$_Response value, $Res Function(_$_Response) then) =
      __$$_ResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool succeeded,
      Map<String, dynamic> data,
      String message,
      int statusCode});
}

/// @nodoc
class __$$_ResponseCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements _$$_ResponseCopyWith<$Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response _value, $Res Function(_$_Response) _then)
      : super(_value, (v) => _then(v as _$_Response));

  @override
  _$_Response get _value => super._value as _$_Response;

  @override
  $Res call({
    Object? succeeded = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$_Response(
      succeeded: succeeded == freezed
          ? _value.succeeded
          : succeeded // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Response implements _Response {
  const _$_Response(
      {this.succeeded = false,
      final Map<String, dynamic> data = const {},
      this.message = "",
      this.statusCode = 401})
      : _data = data;

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  @JsonKey()
  final bool succeeded;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int statusCode;

  @override
  String toString() {
    return 'Response(succeeded: $succeeded, data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response &&
            const DeepCollectionEquality().equals(other.succeeded, succeeded) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(succeeded),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      __$$_ResponseCopyWithImpl<_$_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {final bool succeeded,
      final Map<String, dynamic> data,
      final String message,
      final int statusCode}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  bool get succeeded;
  @override
  Map<String, dynamic> get data;
  @override
  String get message;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      throw _privateConstructorUsedError;
}
