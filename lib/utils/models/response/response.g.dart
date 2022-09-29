// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      succeeded: json['succeeded'] as bool? ?? false,
      data: json['data'] as Map<String, dynamic>? ?? const {},
      message: json['message'] as String? ?? "",
      statusCode: json['statusCode'] as int? ?? 401,
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'succeeded': instance.succeeded,
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
