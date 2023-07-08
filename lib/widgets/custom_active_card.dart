import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class CustomActive extends StatelessWidget {
  CustomActive(
      {super.key,
      required this.image,
      required this.count, this.c,
      required this.title,
      required this.temp,
      required this.name,
      this.onTap});

  String image;
  String temp, title, name, count;
  String ? c;
  VoidCallback ?onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff9A7265)),
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    image, height: 75,),
                  const SizedBox(height: 16,),
                  Text(title, style: largeWhiteBold),
                  Text(name, style: smallWhiteLite),
                ],
              ),
              Positioned(
                  top: 40,
                  right: 0,
                  child:
                      Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text(
                      count,
                      style: largeWhiteBold,
                    ),
                    Text(c!, style: smallWhiteLite,
                    )
                  ])),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset("assets/images/off.png", height: 24)),
              Positioned(
                  top: 25, right: 0, child: Text(temp, style: smallWhiteLite)),
            ],
          ),
        ),
      ),
    );
  }
}
