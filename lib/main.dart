import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/presenter/pokedex.presenter.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.screen.dart';

void setUp() {
  GetIt.I.registerFactory(() => PokedexPresenter());
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
      theme: ThemeData(),
      initialRoute: PokedexScreen.route,
      routes: {
        PokedexScreen.route: (_) => PokedexScreen(),
      },
    );
  }
}
