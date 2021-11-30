import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/presenter/pokedex.presenter.dart';
import 'package:pokedex/repository/pokedex.repository.dart';
import 'package:pokedex/theme/theme.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.screen.dart';

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
      initialRoute: PokedexScreen.route,
      routes: {
        PokedexScreen.route: (_) => PokedexScreen(),
      },
    );
  }
}
