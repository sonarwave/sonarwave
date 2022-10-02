// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_file_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateFileRequest _$$_CreateFileRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateFileRequest(
      name: json['name'] as String? ?? "",
      path: json['path'] as String? ?? "",
      extension: json['extension'] as String? ?? "",
      size: (json['size'] as num?)?.toDouble() ?? 0,
      recipientId: json['recipientId'] as String? ?? "",
    );

Map<String, dynamic> _$$_CreateFileRequestToJson(
        _$_CreateFileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'extension': instance.extension,
      'size': instance.size,
      'recipientId': instance.recipientId,
    };
