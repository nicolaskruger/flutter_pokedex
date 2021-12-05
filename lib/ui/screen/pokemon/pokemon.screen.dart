import 'package:flutter/cupertino.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/ui/components/img_fitter/img_fitter.component.dart';
import 'package:pokedex/ui/components/template/template.compoente.dart';
import 'package:pokedex/util/type_color.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({Key? key, required this.pokemonDto}) : super(key: key);

  static final String route = "pokemon";

  final PokemonDto pokemonDto;

  @override
  Widget build(BuildContext context) {
    Color color = typeColor[pokemonDto.types.first] as Color;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: color,
      child: TemplateCompoent(
        color: color,
        img: ImageFitterComponent(url: pokemonDto.sprite),
        title: pokemonDto.name,
        subtitle: SizedBox(),
        footer: SizedBox(),
      ),
    );
  }
}
