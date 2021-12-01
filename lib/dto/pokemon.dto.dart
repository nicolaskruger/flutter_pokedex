import 'package:pokedex/dto/stats.dto.dart';

class PokemonDto {
  PokemonDto({
    required this.name,
    required this.moves,
    required this.sprite,
    required this.types,
    required this.statsDto,
    required this.id,
  });
  final String name;
  final String sprite;
  final List<String> types;
  final List<String> moves;
  final List<StatsDto> statsDto;
  final int id;
  factory PokemonDto.fromJson(dynamic json) {
    return PokemonDto(
      name: json["name"],
      sprite: json["sprites"]["other"]["official-artwork"]["front_default"],
      moves: (json["moves"] as List<dynamic>)
          .map((e) => e["move"]["name"] as String)
          .toList(),
      types: (json["types"] as List<dynamic>)
          .map((e) => e["type"]["name"] as String)
          .toList(),
      statsDto: (json["stats"] as List<dynamic>)
          .map((e) => StatsDto.fromJson(e))
          .toList(),
      id: json["order"] as int,
    );
  }
}
