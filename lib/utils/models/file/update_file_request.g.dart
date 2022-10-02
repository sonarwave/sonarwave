// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_file_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateFileRequest _$$_UpdateFileRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateFileRequest(
      id: json['id'] as String? ?? "",
      acceptance: $enumDecodeNullable(
              _$TransferAcceptanceEnumMap, json['acceptance']) ??
          TransferAcceptance.initial,
    );

Map<String, dynamic> _$$_UpdateFileRequestToJson(
        _$_UpdateFileRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'acceptance': _$TransferAcceptanceEnumMap[instance.acceptance]!,
    };

const _$TransferAcceptanceEnumMap = {
  TransferAcceptance.initial: 'initial',
  TransferAcceptance.accepted: 'accepted',
  TransferAcceptance.denied: 'denied',
};
