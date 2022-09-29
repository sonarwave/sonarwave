// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get connectionId => throw _privateConstructorUsedError;
  int get displayName => throw _privateConstructorUsedError;
  PlatformType get platformType => throw _privateConstructorUsedError;
  String get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String connectionId,
      int displayName,
      PlatformType platformType,
      String roomId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? connectionId = freezed,
    Object? displayName = freezed,
    Object? platformType = freezed,
    Object? roomId = freezed,
  }) {
    return _then(_value.copyWith(
      connectionId: connectionId == freezed
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as int,
      platformType: platformType == freezed
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as PlatformType,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String connectionId,
      int displayName,
      PlatformType platformType,
      String roomId});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? connectionId = freezed,
    Object? displayName = freezed,
    Object? platformType = freezed,
    Object? roomId = freezed,
  }) {
    return _then(_$_User(
      connectionId: connectionId == freezed
          ? _value.connectionId
          : connectionId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as int,
      platformType: platformType == freezed
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as PlatformType,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.connectionId = "",
      this.displayName = 0,
      this.platformType = PlatformType.unknown,
      this.roomId = ""});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final String connectionId;
  @override
  @JsonKey()
  final int displayName;
  @override
  @JsonKey()
  final PlatformType platformType;
  @override
  @JsonKey()
  final String roomId;

  @override
  String toString() {
    return 'User(connectionId: $connectionId, displayName: $displayName, platformType: $platformType, roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality()
                .equals(other.connectionId, connectionId) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.platformType, platformType) &&
            const DeepCollectionEquality().equals(other.roomId, roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(connectionId),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(platformType),
      const DeepCollectionEquality().hash(roomId));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String connectionId,
      final int displayName,
      final PlatformType platformType,
      final String roomId}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get connectionId;
  @override
  int get displayName;
  @override
  PlatformType get platformType;
  @override
  String get roomId;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
