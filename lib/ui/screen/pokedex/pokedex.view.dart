import 'package:pokedex/dto/pokemon.dto.dart';

abstract class PokedexView {
  setLoad(bool val);
  setPokemonList(List<PokemonDto> list);
}
