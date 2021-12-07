import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/item.dto.dart';
import 'package:pokedex/ui/components/img_fitter/img_fitter.component.dart';
import 'package:pokedex/ui/components/template/template.compoente.dart';
import 'package:pokedex/util/lorem.utils.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({
    Key? key,
    required this.itemDto,
  }) : super(key: key);

  static final String route = "item";

  final ItemDto itemDto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: MyColors.itemScreenBackGround,
      child: TemplateCompoent(
        color: MyColors.itemScreenBackGround,
        img: ImageFitterComponent(
          url: itemDto.url,
          width: 120,
        ),
        title: itemDto.name,
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              itemDto.price.toString(),
              style: TextStyle(
                color: MyColors.textSubColor,
                decoration: TextDecoration.none,
                fontSize: 19,
                fontFamily: "Avenir",
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.attach_money,
              color: MyColors.textSubColor,
            ),
          ],
        ),
        description: LOREM,
        footer: SizedBox(),
      ),
    );
  }
}
