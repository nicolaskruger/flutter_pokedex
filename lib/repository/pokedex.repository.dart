import 'package:dio/dio.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';

class PokedexRepository {
  PokedexRepository({required this.dio});
  final Dio dio;
}
