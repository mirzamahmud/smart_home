import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class HomeCard extends StatelessWidget {
  HomeCard({super.key,
  required this.text,
  required this.image,
  required this.percentage,
  required this.sign});

  String percentage, sign, text;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
        color: const Color(0xffe4ecef),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Image.asset(image,height: 32,width: 32,),
              ),
              Text(percentage,style: largeDarkBold,),
              Text(sign,style: smallDarkBold,),
            ],
          ),
          Text(text,style: smallDarkLight,),
        ],
      ),
    );
  }
}
