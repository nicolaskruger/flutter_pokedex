import 'package:pokedex/dto/with_name.dto.dart';
import 'package:pokedex/util/safe_int_converter.util.dart';

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
      accuracy: safeIntConvert(json["accuracy"]),
      basePower: safeIntConvert(json["power"]),
      pp: safeIntConvert(json["pp"]),
      name: json["name"] as String,
      type: json["type"]["name"] as String,
    );
  }
}
