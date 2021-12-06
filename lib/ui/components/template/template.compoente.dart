import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/ui/components/template/section/come_back_button.section.dart';
import 'package:pokedex/ui/components/template/section/template_title.section.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class TemplateCompoent extends StatelessWidget {
  const TemplateCompoent({
    Key? key,
    required this.color,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.footer,
  }) : super(key: key);

  final Color color;
  final Widget img;
  final String title;
  final Widget subtitle;
  final String description;
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    TemplateTitle(text: title),
                    SizedBox(
                      height: 19,
                    ),
                    subtitle,
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 7,
                        left: 7,
                        bottom: 0,
                        top: 0,
                      ),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                  ],
                ),
                footer,
              ],
            ),
            padding: EdgeInsets.only(
              bottom: 30,
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              color: MyColors.ligthColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        )
      ],
    );
  }
}
