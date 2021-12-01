import 'package:flutter/material.dart';
import 'package:pokedex/theme/elevate_button.theme.dart';
import 'package:pokedex/theme/text.theme.dart';
import 'package:pokedex/util/my_colors.utils.dart';

final myTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(),
  textTheme: myTextTheme,
  elevatedButtonTheme: myElevateButtonThemeDart,
);
