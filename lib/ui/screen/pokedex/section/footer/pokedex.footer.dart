import 'package:flutter/cupertino.dart';
import 'package:pokedex/ui/screen/pokedex/section/footer/enum_footer_pokedex.dart';
import 'package:pokedex/ui/screen/pokedex/section/footer/footer.select.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class PokedexFooter extends StatelessWidget {
  const PokedexFooter({
    Key? key,
    required this.current,
    required this.change,
  }) : super(key: key);

  final EnumFooterPokedex current;
  final Function(EnumFooterPokedex) change;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: MediaQuery.of(context).size.width,
      color: MyColors.headerFooterBackGround,
      child: Column(
        children: [
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            color: MyColors.borderDark,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 20,
              right: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...[
                  EnumFooterPokedex.POKEMON,
                  EnumFooterPokedex.MOVES,
                  EnumFooterPokedex.ITENS,
                ].map(
                  (e) => FooterSelect(
                    enumFooterPokedex: e,
                    current: current,
                    change: change,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
