import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'file_chunk.freezed.dart';
part 'file_chunk.g.dart';

FileChunk fileChunkFromJson(String str) => FileChunk.fromJson(json.decode(str));

String fileChunkToJson(FileChunk data) => json.encode(data.toJson());

@freezed
abstract class FileChunk with _$FileChunk {
    const factory FileChunk({
        @Default("") String fileId,
        @Default("") String chunk,
    }) = _FileChunk;

    factory FileChunk.fromJson(Map<String, dynamic> json) => _$FileChunkFromJson(json);
}