import 'package:flutter/cupertino.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/util/my_colors.utils.dart';
import 'package:pokedex/util/type_color.dart';

class MoveFooter extends StatelessWidget {
  const MoveFooter({
    Key? key,
    required this.moveDto,
  }) : super(key: key);

  final MoveDto moveDto;

  @override
  Widget build(BuildContext context) {
    Color color = typeColor[moveDto.type] as Color;
    return Row(
      children: [
        MoveFooterItem(
          color: color,
          title: "Base Power",
          data: moveDto.basePower.toString(),
        ),
        MoveFooterGapper(),
        MoveFooterItem(
          color: color,
          title: "Accuracy",
          data: moveDto.accuracy.toString() + "%",
        ),
        MoveFooterGapper(),
        MoveFooterItem(
          color: color,
          title: "PP",
          data: moveDto.pp.toString(),
        ),
      ],
    );
  }
}

class MoveFooterGapper extends StatelessWidget {
  const MoveFooterGapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 100,
      color: MyColors.gapColor,
    );
  }
}

class MoveFooterItem extends StatelessWidget {
  const MoveFooterItem({
    Key? key,
    required this.title,
    required this.data,
    required this.color,
  }) : super(key: key);

  final String title;
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .31,
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: color,
              fontSize: 15,
              fontFamily: "Avenir",
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            data,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: MyColors.textColor,
              fontSize: 19,
              fontFamily: "Avenir",
            ),
          ),
        ],
      ),
    );
  }
}
