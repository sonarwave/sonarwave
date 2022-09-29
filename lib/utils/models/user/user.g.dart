// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      connectionId: json['connectionId'] as String? ?? "",
      displayName: json['displayName'] as int? ?? 0,
      platformType:
          $enumDecodeNullable(_$PlatformTypeEnumMap, json['platformType']) ??
              PlatformType.unknown,
      roomId: json['roomId'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'connectionId': instance.connectionId,
      'displayName': instance.displayName,
      'platformType': _$PlatformTypeEnumMap[instance.platformType]!,
      'roomId': instance.roomId,
    };

const _$PlatformTypeEnumMap = {
  PlatformType.unknown: 'unknown',
  PlatformType.phone: 'phone',
  PlatformType.desktop: 'desktop',
  PlatformType.web: 'web',
};
