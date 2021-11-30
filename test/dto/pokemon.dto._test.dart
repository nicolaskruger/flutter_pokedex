import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/dto/stats.dto.dart';

import 'stats.dto._test.dart';

expectListFunction<T>(List<T> actual, List<T> matcher, Function(T, T) f) {
  for (var i = 0; i < actual.length; i++) {
    f(actual[i], matcher[i]);
  }
}

expectList<T>(List<T> actual, List<T> matcher) {
  expectListFunction(actual, matcher, expect);
}

expectListStatDto(List<StatsDto> actual, List<StatsDto> matcher) {
  expectListFunction(actual, matcher, assertStat);
}

expectPokemon(PokemonDto actual, PokemonDto matcher) {
  expect(actual.name, matcher.name);
  expectList(actual.moves, matcher.moves);
  expectList(actual.types, matcher.types);
  expect(actual.sprite, matcher.sprite);
  expectListStatDto(actual.statsDto, matcher.statsDto);
}

final getDitto = () => PokemonDto(
    name: "ditto",
    moves: ["transform"],
    sprite:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png",
    types: ["normal"],
    statsDto: [
      StatsDto(name: "hp", point: 48),
      StatsDto(name: "attack", point: 48),
      StatsDto(name: "defense", point: 48),
      StatsDto(name: "special-attack", point: 48),
      StatsDto(name: "special-defense", point: 48),
      StatsDto(name: "speed", point: 48)
    ]);

void main() {
  test("deve converter o pokemon de json corretamente", () async {
    final fileJson = File('test/dto/pokemon.json');
    final pokemon =
        PokemonDto.fromJson(json.decode(await fileJson.readAsString()));
    expectPokemon(pokemon, getDitto());
  });
}
