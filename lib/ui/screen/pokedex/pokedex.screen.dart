import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/presenter/pokedex.presenter.dart';
import 'package:pokedex/ui/components/load/load.component.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/pokedex.body.dart';
import 'package:pokedex/ui/screen/pokedex/section/pokedex.header.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({Key? key}) : super(key: key);
  @override
  _PokedexScreenState createState() => _PokedexScreenState();
  static const route = "pokedex";
}

class _PokedexScreenState extends State<PokedexScreen>
    with SingleTickerProviderStateMixin
    implements PokedexView {
  final PokedexPresenter pokedexPresenter = GetIt.I.get();
  late AnimationController _controller;
  var isLoading = true;
  List<PokemonDto> pokeList = [];
  var search = "";
  @override
  void initState() {
    super.initState();
    pokedexPresenter.pokedexView = this;
    _controller = AnimationController(vsync: this);
    pokedexPresenter.inith();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  setLoad(bool val) {
    // TODO: implement setLoad
    setState(() {
      isLoading = val;
    });
  }

  @override
  setPokemonList(List<PokemonDto> list) {
    // TODO: implement setPokemonList
    setState(() {
      pokeList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) return Load();
    return Scaffold(
      body: Column(
        children: [
          PokedexHeader(onChange: (value) {
            setState(() {
              search = value;
            });
          }),
          PokedexBody(list: pokeList)
        ],
      ),
    );
  }
}
