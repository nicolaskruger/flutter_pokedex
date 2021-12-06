import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/util/type_color.dart';

class RoundType extends StatelessWidget {
  const RoundType({Key? key, required this.type}) : super(key: key);
  final String type;
  @override
  Widget build(BuildContext context) {
    Color color = typeColor[type] as Color;

    return Container(
        padding: EdgeInsets.only(
          top: 7,
          bottom: 7,
          left: 12,
          right: 12,
        ),
        child: Text(
          type.toUpperCase(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(1000),
          ),
        ));
  }
}
