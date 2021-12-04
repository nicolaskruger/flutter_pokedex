import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/dto/with_name.dto.dart';
import 'package:pokedex/repository/pokedex.repository.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';
import 'package:pokedex/ui/screen/pokedex/section/footer/enum_footer_pokedex.dart';

class PokedexPresenter {
  PokedexPresenter({required this.pokedexRepository});
  late PokedexView pokedexView;
  final PokedexRepository pokedexRepository;

  inith() async {
    pokedexView.setLoad(true);

    pokedexView.setPokemonList(await pokedexRepository.getPokelist());
    pokedexView.setItemList(await pokedexRepository.getItemList());
    pokedexView.setMoveList(await pokedexRepository.getMovesList());
    pokedexView.setLoad(false);
  }

  filterList(EnumFooterPokedex enumFooterPokedex, String name) {
    Map<EnumFooterPokedex, List<WithName>> _swt = {
      EnumFooterPokedex.ITENS: pokedexView.getItemList(),
      EnumFooterPokedex.MOVES: pokedexView.getMoveList(),
      EnumFooterPokedex.POKEMON: pokedexView.getItemList(),
    };
    return (_swt[enumFooterPokedex] as List<WithName>)
        .where((element) => element.name.contains(name));
  }
}
