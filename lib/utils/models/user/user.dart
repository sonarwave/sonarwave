import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonarwave/utils/enums/enums.dart';

part 'user.freezed.dart';
part 'user.g.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
  const factory User({
    @Default("") String connectionId,
    @Default(0) int displayName,
    @Default(PlatformType.unknown) PlatformType platformType,
    @Default("") String roomId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
