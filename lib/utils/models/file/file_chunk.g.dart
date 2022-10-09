// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_chunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileChunk _$$_FileChunkFromJson(Map<String, dynamic> json) => _$_FileChunk(
      fileId: json['fileId'] as String? ?? "",
      chunk: (json['chunk'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          const [],
    );

Map<String, dynamic> _$$_FileChunkToJson(_$_FileChunk instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'chunk': instance.chunk,
    };
