import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemplateTitle extends StatelessWidget {
  const TemplateTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.substring(0, 1).toUpperCase() + text.substring(1),
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
