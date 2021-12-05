import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class ComeBackButton extends StatelessWidget {
  const ComeBackButton({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Material(
          color: color,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 30,
              color: MyColors.ligthColor,
            ),
          ),
        ),
      ],
    );
  }
}
