import 'package:dio/dio.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/dto/pokemon.dto.dart';

class PokedexRepository {
  static final POKELIST_URL = "https://pokeapi.co/api/v2/pokemon/?limit=151";
  static final MOVELIST_URL = "https://pokeapi.co/api/v2/move?limit=350";
  PokedexRepository({required this.dio});
  final Dio dio;

  Future<List<PokemonDto>> getPokelist() async {
    final json = await dio.get(POKELIST_URL);
    return Future.wait((json.data["results"] as List<dynamic>).map((e) async {
      final otherJson = await dio.get(e["url"]);
      return PokemonDto.fromJson(otherJson.data);
    }).toList());
  }

  Future<List<MoveDto>> getMoveslist() async {
    final response = await dio.get(MOVELIST_URL);
    return [];
  }
}
