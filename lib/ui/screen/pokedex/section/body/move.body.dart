import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/types.body.dart';

class MoveBody extends StatelessWidget {
  const MoveBody({Key? key, required this.moveDto}) : super(key: key);

  final MoveDto moveDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  moveDto.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            TypeBody(types: [moveDto.type])
          ],
        ),
      ),
    );
  }
}
