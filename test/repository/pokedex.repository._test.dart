import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pokedex/repository/pokedex.repository.dart';

import '../dto/item.dto._test.dart';
import '../dto/move.dto._test.dart';
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
    test("deve converter lista de moves para moves", () async {
      when(dio.get(PokedexRepository.MOVELIST_URL)).thenAnswer(
          (_) async => fileToResponse("test/repository/movelist.json"));
      when(dio.get("move"))
          .thenAnswer((_) async => fileToResponse("test/dto/move.json"));
      final list = await pokedexRepository.getMovesList();
      list.forEach((element) {
        testMove(element, createMove());
      });
    });
    test("deve converter lista de item para item", () async {
      when(dio.get(PokedexRepository.ITEM_LIST)).thenAnswer(
          (_) async => fileToResponse("test/repository/itemlist.json"));
      when(dio.get("item"))
          .thenAnswer((_) async => fileToResponse("test/dto/item.json"));
      final list = await pokedexRepository.getItemList();
      list.forEach((element) {
        testItem(element, createItem());
      });
    });
  });
}
