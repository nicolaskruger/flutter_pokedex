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
  static final inputBackgroundColor = Color.fromARGB(1, 0, 0, 0);
}
