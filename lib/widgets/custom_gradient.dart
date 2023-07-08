import 'package:flutter/material.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: RadialGradient(colors: [
            Colors.orange.shade400,
            const Color(0xff4C7380),
          ],
            focal: Alignment.center,
            radius: 0.5,)
      ),
    );
  }
}
