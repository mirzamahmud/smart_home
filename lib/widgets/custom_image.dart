import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  CustomImage(
      {super.key,
      required this.image,
      this.height,
      this.width,
      this.top,
      this.right,
      this.bottom,
      this.left});

  double? left, right, top, bottom;
  double? height, width;
  String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      bottom: bottom,
      left: left,
      top: top,
      child: Center(
        child: Image.asset(
          image,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
