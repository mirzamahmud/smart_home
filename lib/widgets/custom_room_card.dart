import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/widgets/custom_image.dart';

class CustomRoom extends StatelessWidget {
  CustomRoom(
      {super.key,
        required this.top,
      required this.text,
      required this.title,
      required this.count,
      required this.temp,
      required this.image});

  String temp, title, text, count, image;
  double top;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 190,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        decoration: BoxDecoration(
          color: semiWhite,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Container(
                width: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: backTill,
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(temp,style: semiMidWhiteBold),
                    Text("c",style: smallWhiteLite),
                  ],
                ),
              ),
            ),
            CustomImage(image: image,height: 100,width: 100,left: 0,right: 0,top: top,),
            Positioned(
              bottom: 20,right: 0,left: 0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(child: Text(title, style: largeDarkBold)),
              ),
            ),
            Positioned(
              bottom: 0,left: 0,right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 2),
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      count,
                      style: largeDarkBold,
                    ),
                  ),
                  Text(
                    text,
                    style: smallDarkLight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
