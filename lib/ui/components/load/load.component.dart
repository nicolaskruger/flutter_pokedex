import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class Load extends StatelessWidget {
  const Load({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: MyColors.backGround),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }
}
