import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColors {
  static final backGround = LinearGradient(colors: [
    Color(0xff8DE061),
    Color(0xff8DE061),
  ]);
  static final logo = Color(0xff8DE061);
  static final headerGradiente = LinearGradient(colors: [
    Color(0xff6E95FD),
    Color(0xff6FDEFA),
    Color(0xff8DE061),
    Color(0xff51E85E),
  ]);
  static final filterGradient = ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.5);
  static final inputBackgroundColor = Color.fromARGB(0, 0, 0, 0);
  static final textColor = Colors.black;
  static final ligthColor = Color(0xfffafafa);
  static final textSubColor = Color(0xffa4a4a4);
  static final buttonOverlayColor = Color(0xff559EDF);
  static final headerFooterBackGround = Colors.green[100];
  static final borderDark = Color(0xff8DE061);
  static final numberColor = Color(0xff666666);
  static final gapColor = Color(0xffe4e4e4);
}
