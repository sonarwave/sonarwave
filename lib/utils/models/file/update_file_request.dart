import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:sonarwave/utils/enums/enums.dart';

part 'update_file_request.freezed.dart';
part 'update_file_request.g.dart';

UpdateFileRequest updateFileRequestFromJson(String str) =>
    UpdateFileRequest.fromJson(json.decode(str));

String updateFileRequestToJson(UpdateFileRequest data) =>
    json.encode(data.toJson());

@freezed
abstract class UpdateFileRequest with _$UpdateFileRequest {
  const factory UpdateFileRequest({
    @Default("") String id,
    @Default(TransferAcceptance.initial) TransferAcceptance acceptance,
  }) = _UpdateFileRequest;

  factory UpdateFileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateFileRequestFromJson(json);
}
