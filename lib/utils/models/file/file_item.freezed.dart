// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileItem _$FileItemFromJson(Map<String, dynamic> json) {
  return _FileItem.fromJson(json);
}

/// @nodoc
mixin _$FileItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  TransferAcceptance get acceptance => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  User get sender => throw _privateConstructorUsedError;
  String get recipientId => throw _privateConstructorUsedError;
  User get recipient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileItemCopyWith<FileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileItemCopyWith<$Res> {
  factory $FileItemCopyWith(FileItem value, $Res Function(FileItem) then) =
      _$FileItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String path,
      TransferAcceptance acceptance,
      String extension,
      double size,
      String senderId,
      User sender,
      String recipientId,
      User recipient});

  $UserCopyWith<$Res> get sender;
  $UserCopyWith<$Res> get recipient;
}

/// @nodoc
class _$FileItemCopyWithImpl<$Res> implements $FileItemCopyWith<$Res> {
  _$FileItemCopyWithImpl(this._value, this._then);

  final FileItem _value;
  // ignore: unused_field
  final $Res Function(FileItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? acceptance = freezed,
    Object? extension = freezed,
    Object? size = freezed,
    Object? senderId = freezed,
    Object? sender = freezed,
    Object? recipientId = freezed,
    Object? recipient = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      acceptance: acceptance == freezed
          ? _value.acceptance
          : acceptance // ignore: cast_nullable_to_non_nullable
              as TransferAcceptance,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      recipientId: recipientId == freezed
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get sender {
    return $UserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $UserCopyWith<$Res> get recipient {
    return $UserCopyWith<$Res>(_value.recipient, (value) {
      return _then(_value.copyWith(recipient: value));
    });
  }
}

/// @nodoc
abstract class _$$_FileItemCopyWith<$Res> implements $FileItemCopyWith<$Res> {
  factory _$$_FileItemCopyWith(
          _$_FileItem value, $Res Function(_$_FileItem) then) =
      __$$_FileItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String path,
      TransferAcceptance acceptance,
      String extension,
      double size,
      String senderId,
      User sender,
      String recipientId,
      User recipient});

  @override
  $UserCopyWith<$Res> get sender;
  @override
  $UserCopyWith<$Res> get recipient;
}

/// @nodoc
class __$$_FileItemCopyWithImpl<$Res> extends _$FileItemCopyWithImpl<$Res>
    implements _$$_FileItemCopyWith<$Res> {
  __$$_FileItemCopyWithImpl(
      _$_FileItem _value, $Res Function(_$_FileItem) _then)
      : super(_value, (v) => _then(v as _$_FileItem));

  @override
  _$_FileItem get _value => super._value as _$_FileItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? acceptance = freezed,
    Object? extension = freezed,
    Object? size = freezed,
    Object? senderId = freezed,
    Object? sender = freezed,
    Object? recipientId = freezed,
    Object? recipient = freezed,
  }) {
    return _then(_$_FileItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      acceptance: acceptance == freezed
          ? _value.acceptance
          : acceptance // ignore: cast_nullable_to_non_nullable
              as TransferAcceptance,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      recipientId: recipientId == freezed
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileItem implements _FileItem {
  const _$_FileItem(
      {this.id = "",
      this.name = "",
      this.path = "",
      this.acceptance = TransferAcceptance.initial,
      this.extension = "",
      this.size = 0.0,
      this.senderId = "",
      this.sender = const User(),
      this.recipientId = "",
      this.recipient = const User()});

  factory _$_FileItem.fromJson(Map<String, dynamic> json) =>
      _$$_FileItemFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String path;
  @override
  @JsonKey()
  final TransferAcceptance acceptance;
  @override
  @JsonKey()
  final String extension;
  @override
  @JsonKey()
  final double size;
  @override
  @JsonKey()
  final String senderId;
  @override
  @JsonKey()
  final User sender;
  @override
  @JsonKey()
  final String recipientId;
  @override
  @JsonKey()
  final User recipient;

  @override
  String toString() {
    return 'FileItem(id: $id, name: $name, path: $path, acceptance: $acceptance, extension: $extension, size: $size, senderId: $senderId, sender: $sender, recipientId: $recipientId, recipient: $recipient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.acceptance, acceptance) &&
            const DeepCollectionEquality().equals(other.extension, extension) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality()
                .equals(other.recipientId, recipientId) &&
            const DeepCollectionEquality().equals(other.recipient, recipient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(acceptance),
      const DeepCollectionEquality().hash(extension),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(senderId),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(recipientId),
      const DeepCollectionEquality().hash(recipient));

  @JsonKey(ignore: true)
  @override
  _$$_FileItemCopyWith<_$_FileItem> get copyWith =>
      __$$_FileItemCopyWithImpl<_$_FileItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileItemToJson(
      this,
    );
  }
}

abstract class _FileItem implements FileItem {
  const factory _FileItem(
      {final String id,
      final String name,
      final String path,
      final TransferAcceptance acceptance,
      final String extension,
      final double size,
      final String senderId,
      final User sender,
      final String recipientId,
      final User recipient}) = _$_FileItem;

  factory _FileItem.fromJson(Map<String, dynamic> json) = _$_FileItem.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get path;
  @override
  TransferAcceptance get acceptance;
  @override
  String get extension;
  @override
  double get size;
  @override
  String get senderId;
  @override
  User get sender;
  @override
  String get recipientId;
  @override
  User get recipient;
  @override
  @JsonKey(ignore: true)
  _$$_FileItemCopyWith<_$_FileItem> get copyWith =>
      throw _privateConstructorUsedError;
}
