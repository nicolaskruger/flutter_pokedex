import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/dto/stats.dto.dart';
import 'package:pokedex/presenter/pokedex.presenter.dart';
import 'package:pokedex/repository/pokedex.repository.dart';
import 'package:pokedex/theme/theme.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.screen.dart';
import 'package:pokedex/ui/screen/pokemon/pokemon.screen.dart';

void setUp() {
  Dio dio = Dio();
  GetIt.I.registerFactory(() => PokedexRepository(dio: dio));
  GetIt.I.registerFactory(
      () => PokedexPresenter(pokedexRepository: GetIt.I.get()));
}

void main() {
  setUp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme,
      home: createDebugScreen(),
      // initialRoute: PokedexScreen.route,
      // routes: {
      //   PokedexScreen.route: (_) => PokedexScreen(),
      //   PokemonScreen.route: (context) => PokemonScreen(
      //       pokemonDto:
      //           ModalRoute.of(context)?.settings.arguments as PokemonDto)
      // },
    );
  }
}

createDebugScreen() {
  return PokemonScreen(
    pokemonDto: PokemonDto(
      name: "ditto",
      moves: ["transform"],
      sprite:
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png",
      types: ["normal"],
      statsDto: [
        StatsDto(name: "hp", point: 48),
        StatsDto(name: "attack", point: 48),
        StatsDto(name: "defense", point: 48),
        StatsDto(name: "special-attack", point: 48),
        StatsDto(name: "special-defense", point: 48),
        StatsDto(name: "speed", point: 48)
      ],
      id: 203,
    ),
  );
}
