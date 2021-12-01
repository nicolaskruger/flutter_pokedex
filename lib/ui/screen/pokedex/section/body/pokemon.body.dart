import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/pokemon.dto.dart';

class PokemonBody extends StatelessWidget {
  const PokemonBody({Key? key, required this.pokemonDto}) : super(key: key);

  final PokemonDto pokemonDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  pokemonDto.sprite,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pokemonDto.name,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "#" + pokemonDto.id.toString().padLeft(4, '0'),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
