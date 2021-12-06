import 'package:flutter/cupertino.dart';
import 'package:pokedex/dto/stats.dto.dart';
import 'package:pokedex/util/my_colors.utils.dart';

class StatFooter extends StatelessWidget {
  const StatFooter({
    Key? key,
    required this.listStat,
    required this.color,
  }) : super(key: key);

  final List<StatsDto> listStat;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...listStat.map(
          (e) => Container(
            margin: EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  e.name.toUpperCase(),
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontFamily: "Avenir",
                  ),
                ),
                Text(
                  e.point.toString().padLeft(3, '0'),
                  style: TextStyle(
                    color: MyColors.numberColor,
                    fontSize: 14,
                    fontFamily: "Avenir",
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
