import 'package:pokedex/dto/stats.dto.dart';

class PokemonDto {
  PokemonDto({
    required this.name,
    required this.moves,
    required this.sprite,
    required this.types,
    required this.statsDto,
  });
  final String name;
  final String sprite;
  final List<String> types;
  final List<String> moves;
  final StatsDto statsDto;

  factory PokemonDto.fromJson(dynamic json) {
    return PokemonDto(
        name: json["name"],
        sprite: json["sprites"]["other"]["oficial-artwork"]["front_default"],
        moves: (json["moves"] as List<dynamic>)
            .map((e) => e["move"]["name"] as String)
            .toList(),
        types: (json["types"] as List<dynamic>)
            .map((e) => e["type"]["name"] as String)
            .toList(),
        statsDto: StatsDto.fromJson(json["stats"]));
  }
}
