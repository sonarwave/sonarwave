import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sonarwave/utils/models/user/user.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Room with _$Room {
  factory Room({
    @Default("") String id,
    @Default([]) List<User> users,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
