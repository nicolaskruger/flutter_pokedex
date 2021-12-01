import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/repository/pokedex.repository.dart';

import '../dto/pokemon.dto._test.dart';
import '../helper/file_to_json.dart';
import 'pokedex.repository._test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  final Dio dio = MockDio();
  final PokedexRepository pokedexRepository = PokedexRepository(dio: dio);
  group("test repository", () {
    test("deve converter lista de pokemons para pokemons", () async {
      when(dio.get(PokedexRepository.POKELIST_URL)).thenAnswer(
          (_) async => fileToResponse("test/repository/pokelist.json"));
      when(dio.get("url"))
          .thenAnswer((_) async => fileToResponse("test/dto/pokemon.json"));
      final list = await pokedexRepository.getPokelist();
      list.forEach((element) {
        expectPokemon(element, getDitto());
      });
    });
  });
}