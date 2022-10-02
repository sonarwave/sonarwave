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
      recipientId: json['recipientId'] as String? ?? "",
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
      'recipientId': instance.recipientId,
    };

const _$TransferAcceptanceEnumMap = {
  TransferAcceptance.initial: 'initial',
  TransferAcceptance.accepted: 'accepted',
  TransferAcceptance.denied: 'denied',
};
