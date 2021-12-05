import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/move.body.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/pokemon.body.dart';

class PokedexBody extends StatelessWidget {
  const PokedexBody({Key? key, required this.list}) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ...list.map((e) {
            if (e is PokemonDto) {
              return PokemonBody(
                pokemonDto: e as PokemonDto,
              );
            }
            if (e is MoveDto) {
              return MoveBody(moveDto: e);
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
