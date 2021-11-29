import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/presenter/pokedex.presenter.dart';
import 'package:pokedex/ui/screen/pokedex/pokedex.view.dart';

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
  @override
  void initState() {
    super.initState();
    pokedexPresenter.pokedexView = this;
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
