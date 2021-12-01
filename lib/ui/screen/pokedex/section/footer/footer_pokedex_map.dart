import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/ui/screen/pokedex/section/footer/enum_footer_pokedex.dart';

class FooterPokedexObject {
  FooterPokedexObject({required this.icon, required this.label});
  final String label;
  final Icon icon;
}

final Map<EnumFooterPokedex, FooterPokedexObject> footerPokedexMap = {
  EnumFooterPokedex.POKEMON: FooterPokedexObject(
    icon: Icon(Icons.catching_pokemon),
    label: "pokemon",
  ),
  EnumFooterPokedex.ITENS: FooterPokedexObject(
    icon: Icon(Icons.medical_services),
    label: "itens",
  ),
  EnumFooterPokedex.MOVES: FooterPokedexObject(
    icon: Icon(Icons.bolt),
    label: "moves",
  ),
};
