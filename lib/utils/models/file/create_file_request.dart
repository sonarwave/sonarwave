import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_file_request.freezed.dart';
part 'create_file_request.g.dart';

CreateFileRequest createFileRequestFromJson(String str) => CreateFileRequest.fromJson(json.decode(str));

String createFileRequestToJson(CreateFileRequest data) => json.encode(data.toJson());

@freezed
abstract class CreateFileRequest with _$CreateFileRequest {
    const factory CreateFileRequest({
        @Default("") String name,
        @Default("") String path,
        @Default("") String extension,
        @Default(0) double size,
        @Default("") String recipientId,
    }) = _CreateFileRequest;

    factory CreateFileRequest.fromJson(Map<String, dynamic> json) => _$CreateFileRequestFromJson(json);
}
