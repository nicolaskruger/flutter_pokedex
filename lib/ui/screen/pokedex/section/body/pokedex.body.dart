import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/pokemon.body.dart';

class PokedexBody extends StatelessWidget {
  const PokedexBody({Key? key, required this.list}) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        children: [
          ...list.map((e) {
            if (e is PokemonDto) {
              return PokemonBody(
                pokemonDto: e as PokemonDto,
              );
            }
            return SizedBox(
              height: 10,
            );
          })
        ],
      ),
    );
  }
}