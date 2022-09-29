import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
abstract class Response with _$Response {
  const factory Response({
    @Default(false) bool succeeded,
    @Default({}) Map<String, dynamic> data,
    @Default("") String message,
    @Default(401) int statusCode,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
