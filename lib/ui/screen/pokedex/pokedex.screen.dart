import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/dto/pokemon.dto.dart';
import 'package:pokedex/presenter/pokedex.presenter.dart';
import 'package:pokedex/ui/components/load/load.component.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';
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
          Container(
            padding: EdgeInsets.only(top: 30),
            width: MediaQuery.of(context).size.width,
            color: Colors.green[100],
            child: Column(
              children: [
                Text("Pokemon"),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  decoration: BoxDecoration(
                    gradient: MyColors.headerGradiente,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
