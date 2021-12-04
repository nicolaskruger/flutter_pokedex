import 'package:dio/dio.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/dto/pokemon.dto.dart';

class PokedexRepository {
  static final POKELIST_URL = "https://pokeapi.co/api/v2/pokemon/?limit=151";
  static final MOVELIST_URL = "https://pokeapi.co/api/v2/move?limit=350";
  PokedexRepository({required this.dio});
  final Dio dio;

  Future<List<T>> _getListNew<T>(
      String url, T Function(dynamic) funtion) async {
    return Future.wait(
        ((await dio.get(url)).data["results"] as List<dynamic>).map((e) async {
      return funtion((await dio.get(e['url'])).data);
    }).toList());
  }

  Future<List<dynamic>> _getList(Response<dynamic> response) async {
    return Future.wait(
        (response.data["results"] as List<dynamic>).map((e) async {
      return (await dio.get(e['url'])).data;
    }).toList());
  }

  Future<List<PokemonDto>> getPokelist() async {
    return (await _getList(await dio.get(POKELIST_URL)))
        .map((e) => PokemonDto.fromJson(e))
        .toList();
  }

  Future<List<MoveDto>> getMovesList() async {
    return (await _getList(await dio.get(MOVELIST_URL)))
        .map((e) => MoveDto.fromJson(e))
        .toList();
  }
}
