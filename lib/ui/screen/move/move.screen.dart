import 'package:flutter/cupertino.dart';
import 'package:pokedex/dto/move.dto.dart';
import 'package:pokedex/ui/components/move_footer/move_footer.component.dart';
import 'package:pokedex/ui/components/round_type/round_type.component.dart';
import 'package:pokedex/ui/components/template/template.compoente.dart';
import 'package:pokedex/util/lorem.utils.dart';
import 'package:pokedex/util/type_color.dart';

class MoveScreen extends StatelessWidget {
  const MoveScreen({
    Key? key,
    required this.moveDto,
  }) : super(key: key);

  static final String route = "move";

  final MoveDto moveDto;

  @override
  Widget build(BuildContext context) {
    Color color = typeColor[moveDto.type] as Color;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: color,
      child: TemplateCompoent(
        color: color,
        img: SizedBox(),
        title: moveDto.name,
        subtitle: RoundType(type: moveDto.type),
        description: LOREM,
        footer: MoveFooter(
          moveDto: moveDto,
        ),
      ),
    );
  }
}
