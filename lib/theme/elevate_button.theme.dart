import 'package:flutter/material.dart';
import 'package:pokedex/util/my_colors.utils.dart';

final myElevateButtonThemeDart = ElevatedButtonThemeData(
  style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith(
        (states) => MyColors.buttonOverlayColor),
    shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(
            color: Colors.grey.shade200,
          ),
        )),
    backgroundColor:
        MaterialStateProperty.resolveWith((states) => MyColors.ligthColor),
    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
      (states) => TextStyle(color: MyColors.textColor),
    ),
  ),
);
