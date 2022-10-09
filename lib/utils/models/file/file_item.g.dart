// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileItem _$$_FileItemFromJson(Map<String, dynamic> json) => _$_FileItem(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      path: json['path'] as String? ?? "",
      acceptance: $enumDecodeNullable(
              _$TransferAcceptanceEnumMap, json['acceptance']) ??
          TransferAcceptance.initial,
      extension: json['extension'] as String? ?? "",
      size: (json['size'] as num?)?.toDouble() ?? 0.0,
      senderId: json['senderId'] as String? ?? "",
      sender: json['sender'] == null
          ? const User()
          : User.fromJson(json['sender'] as Map<String, dynamic>),
      recipientId: json['recipientId'] as String? ?? "",
      recipient: json['recipient'] == null
          ? const User()
          : User.fromJson(json['recipient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FileItemToJson(_$_FileItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'path': instance.path,
      'acceptance': _$TransferAcceptanceEnumMap[instance.acceptance]!,
      'extension': instance.extension,
      'size': instance.size,
      'senderId': instance.senderId,
      'sender': instance.sender,
      'recipientId': instance.recipientId,
      'recipient': instance.recipient,
    };

const _$TransferAcceptanceEnumMap = {
  TransferAcceptance.initial: 'initial',
  TransferAcceptance.accepted: 'accepted',
  TransferAcceptance.denied: 'denied',
};
