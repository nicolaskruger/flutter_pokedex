import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/ui/screen/pokedex/section/footer/enum_footer_pokedex.dart';
import 'package:pokedex/ui/screen/pokedex/section/footer/footer_pokedex_map.dart';

class FooterSelect extends StatelessWidget {
  FooterSelect({
    Key? key,
    required this.enumFooterPokedex,
    required this.current,
    required this.change,
  }) : super(key: key);

  final EnumFooterPokedex current;
  final EnumFooterPokedex enumFooterPokedex;
  final Function(EnumFooterPokedex) change;
  @override
  Widget build(BuildContext context) {
    FooterPokedexObject footerPokedexObject =
        footerPokedexMap[enumFooterPokedex] as FooterPokedexObject;
    Color color = enumFooterPokedex == current ? Colors.black : Colors.black54;
    return TextButton(
      onPressed: () {
        change(enumFooterPokedex);
      },
      child: Column(
        children: [
          IconTheme(
              data: IconThemeData(color: color),
              child: footerPokedexObject.icon),
          Text(
            footerPokedexObject.label,
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}
