import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonarwave/utils/enums/enums.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @Default("") String connectionId,
    @Default(0) int displayName,
    @Default(PlatformType.unknown) PlatformType platformType,
    @Default("") String roomId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
