import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class CustomDetails extends StatelessWidget {
   CustomDetails({super.key,
   required this.count,
   required this.title});

   String title, count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: largeDarkBold),
        Container(
          margin: const EdgeInsets.only(left: 2),
          padding: const EdgeInsets.symmetric(
              horizontal: 6, vertical: 4),
          decoration: BoxDecoration(
              color: backTill,
              borderRadius: BorderRadius.circular(4)),
          child: Text(
            count,
            style: semiMidWhiteBold,
          ),
        ),
      ],
    );
  }
}
