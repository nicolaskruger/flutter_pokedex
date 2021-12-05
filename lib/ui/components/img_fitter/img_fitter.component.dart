import 'package:flutter/cupertino.dart';

class ImageFitterComponent extends StatelessWidget {
  const ImageFitterComponent({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: 80,
    );
  }
}
