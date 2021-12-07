import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class PokedexHeader extends StatelessWidget {
  PokedexHeader({Key? key, required this.onChange}) : super(key: key);

  Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      color: MyColors.headerFooterBackGround,
      child: Column(
        children: [
          Text(
            "Pokemon",
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              style: TextStyle(
                fontFamily: "Helvetica Neue",
                fontSize: 17,
                color: MyColors.textColor,
              ),
              onChanged: onChange,
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
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
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
    );
  }
}
