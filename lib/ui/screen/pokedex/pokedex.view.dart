import 'package:pokedex/dto/item.dto.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/dto/pokemon.dto.dart';

abstract class PokedexView {
  setLoad(bool val);
  setPokemonList(List<PokemonDto> list);
  setItemList(List<ItemDto> list);
  setMoveList(List<MoveDto> list);
  List<PokemonDto> getPokemonList();
  List<ItemDto> getItemList();
  List<MoveDto> getMoveList();
}
