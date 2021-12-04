import 'package:pokedex/dto/with_name.dto.dart';

class MoveDto extends WithName {
  MoveDto({
    required this.basePower,
    required this.accuracy,
    required this.pp,
    required this.name,
    required this.type,
  }) : super(name: name);

  final int basePower;
  final int accuracy;
  final int pp;
  final String name;
  final String type;

  factory MoveDto.fromJson(dynamic json) {
    return MoveDto(
      accuracy: json["accuracy"] as int,
      basePower: json["power"] as int,
      pp: json["pp"] as int,
      name: json["name"] as String,
      type: json["type"]["name"] as String,
    );
  }
}
