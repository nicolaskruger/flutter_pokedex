import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/item.dto.dart';
import 'package:pokedex/ui/screen/item/item.screen.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/types.body.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({Key? key, required this.itemDto}) : super(key: key);

  final ItemDto itemDto;

  onItemPressed(BuildContext context) {
    Navigator.of(context).pushNamed(
      ItemScreen.route,
      arguments: itemDto,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ElevatedButton(
        onPressed: () => onItemPressed(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.network(
                  itemDto.url,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  itemDto.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  itemDto.price.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.attach_money,
                  color: MyColors.textColor,
                ),
                SizedBox(
                  width: 19,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
