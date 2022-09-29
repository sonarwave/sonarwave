import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonarwave/utils/models/user/user.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
abstract class Room with _$Room {
  const factory Room({
    @Default("") String id,
    @Default([]) List<User> users,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
