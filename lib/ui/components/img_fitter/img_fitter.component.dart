import 'package:flutter/cupertino.dart';

class ImageFitterComponent extends StatelessWidget {
  const ImageFitterComponent({Key? key, required this.url, this.width = 80})
      : super(key: key);

  final String url;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
