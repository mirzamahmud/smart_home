import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key,
  this.right,this.bottom,this.height,this.left,this.top,this.width, required this.radius
  });

  final double ? left, right, top, bottom,height,width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,top: top,left: left, bottom: bottom,
      child: Container(
        height: height,width: width,
        decoration: BoxDecoration(
            color: Colors.white24,borderRadius: BorderRadius.circular(radius)
        ),
      ),
    );
  }
}
