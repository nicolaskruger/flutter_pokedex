import 'package:dio/dio.dart';
import 'package:pokedex/dto/item.dto.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/dto/pokemon.dto.dart';

class PokedexRepository {
  static final POKELIST_URL = "https://pokeapi.co/api/v2/pokemon/?limit=151";
  static final MOVELIST_URL = "https://pokeapi.co/api/v2/move?limit=350";
  static final ITEM_LIST = "https://pokeapi.co/api/v2/item?limit=300";
  PokedexRepository({required this.dio});
  final Dio dio;

  Future<List<T>> _getList<T>(String url, T Function(dynamic) funtion) async {
    return Future.wait(
        ((await dio.get(url)).data["results"] as List<dynamic>).map((e) async {
      return funtion((await dio.get(e['url'])).data);
    }).toList());
  }

  Future<List<PokemonDto>> getPokelist() async {
    return _getList(POKELIST_URL, (e) => PokemonDto.fromJson(e));
  }

  Future<List<MoveDto>> getMovesList() async {
    return _getList(MOVELIST_URL, (e) => MoveDto.fromJson(e));
  }

  Future<List<ItemDto>> getItemList() async {
    return _getList(ITEM_LIST, (e) => ItemDto.fromJson(e));
  }
}
