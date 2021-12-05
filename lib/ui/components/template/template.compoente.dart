import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/ui/components/template/section/come_back_button.section.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class TemplateCompoent extends StatelessWidget {
  const TemplateCompoent({
    Key? key,
    required this.color,
    required this.img,
    required this.title,
    required this.footer,
    required this.subtitle,
  }) : super(key: key);

  final Color color;
  final Widget img;
  final String title;
  final Widget subtitle;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ComeBackButton(color: color),
        img,
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: MyColors.ligthColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ))
      ],
    );
  }
}
