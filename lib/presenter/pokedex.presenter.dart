import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/repository/pokedex.repository.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';

class PokedexPresenter {
  PokedexPresenter({required this.pokedexRepository});
  late PokedexView pokedexView;
  final PokedexRepository pokedexRepository;
  var _isLoading = true;
  List<PokemonDto> _pokeList = [];

  get loading {
    return _isLoading;
  }

  get pokeList {
    return _pokeList;
  }

  inith() async {
    pokedexView.setLoad(true);

    pokedexView.setPokemonList(await pokedexRepository.getPokelist());

    pokedexView.setLoad(false);
  }
}
