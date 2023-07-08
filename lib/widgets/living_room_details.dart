import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class LivingRoomDetails extends StatelessWidget {
  const LivingRoomDetails({super.key, required this.image, required this.title, required this.text});

  final String image, title, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Image.asset(image,height: 40,width: 40),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: largeTillBold),
            Text(text,style: smallTillLight),
          ],
        ),
      ],
    );
  }
}
