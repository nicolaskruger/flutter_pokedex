import 'package:flutter/cupertino.dart';
import 'package:pokedex/util/type_color.dart';

class TypeBody extends StatelessWidget {
  const TypeBody({Key? key, required this.types}) : super(key: key);

  final List<String> types;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...types.map(
          (e) => Container(
            margin: EdgeInsets.only(left: 5),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: typeColor[e],
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
