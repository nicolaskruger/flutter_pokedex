import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/item.dto.dart';
import 'package:pokedex/ui/screen/pokedex/section/body/types.body.dart';

class ItemBody extends StatelessWidget {
  const ItemBody({Key? key, required this.itemDto}) : super(key: key);

  final ItemDto itemDto;

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
                  color: Colors.black,
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
