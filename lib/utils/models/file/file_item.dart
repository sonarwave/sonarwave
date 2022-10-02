import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:sonarwave/utils/enums/enums.dart';

part 'file_item.freezed.dart';
part 'file_item.g.dart';

FileItem fileItemFromJson(String str) => FileItem.fromJson(json.decode(str));

String fileItemToJson(FileItem data) => json.encode(data.toJson());

@freezed
abstract class FileItem with _$FileItem {
    const factory FileItem({
        @Default("") String id,
        @Default("") String name,
        @Default("") String path,
        @Default(TransferAcceptance.initial) TransferAcceptance acceptance,
        @Default("") String extension,
        @Default(0.0) double size,
        @Default("") String senderId,
        @Default("") String recipientId,
    }) = _FileItem;

    factory FileItem.fromJson(Map<String, dynamic> json) => _$FileItemFromJson(json);
}