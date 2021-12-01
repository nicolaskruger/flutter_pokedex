import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/repository/pokedex.repository.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';

class PokedexPresenter {
  PokedexPresenter({required this.pokedexRepository});
  late PokedexView pokedexView;
  final PokedexRepository pokedexRepository;

  inith() async {
    pokedexView.setLoad(true);

    pokedexView.setPokemonList(await pokedexRepository.getPokelist());

    pokedexView.setLoad(false);
  }

  filterList(List<PokemonDto> list, String name) {
    return list.where((element) => element.name.contains(name)).toList();
  }
}
