import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/widgets/custom_image.dart';
import 'package:smart_house/widgets/home_card.dart';

class HomeFirstSection extends StatelessWidget {
  const HomeFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        width: double.infinity,
        decoration: decoration,
        child: Stack(children: [
          CustomImage(
            image: "assets/images/cloud_left.png",
            height: 128,
            width: 128,
            left: -15,
            top: 0,
          ),
          CustomImage(
            image: "assets/images/cloud_right.png",
            height: 128,
            width: 128,
            right: 0,
            top: -20,
          ),

          Positioned(
              left: 30,
              top: 50,
              child: Text("Good Morning,", style: titleWhiteBold)),
          Positioned(
              left: 30,
              top: 75,
              child: Text("Kimberly Mastrangelo",
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: const Color(0xff404040)))),

          CustomImage(
              image: "assets/images/bell_icon.png",
              height: 40,
              width: 40,
              right: 30,
              top: 50),

          //Temperature Details Card...
          Positioned(
              top: 100,
              left: 10,
              right: 10,
              bottom: 5,
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: 175,
                  decoration: BoxDecoration(
                      color: semiWhite,
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //image and temperature details
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/cloud_sun.png",
                                  height: 60, width: 60),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("May 16,2023 10:05 am",
                                            style: smallDarkLight),
                                        Text("Cloudy", style: largeDarkBold),
                                        Text("Jakarta, Indonesia",
                                            style: smallDarkLight),
                                      ])),
                              Row(children: [
                                Text("19°",
                                    style: GoogleFonts.poppins(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold)),
                                Text("c",
                                    style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))
                              ])
                            ]),
                        Divider(
                          color: backTill,
                        ),
                        //three card
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeCard(
                                text: "Humadity",
                                image: "assets/images/humadity.png",
                                percentage: '97',
                                sign: "%"),
                            HomeCard(
                                text: "Visibility",
                                image: "assets/images/visibility.png",
                                percentage: '7',
                                sign: "km"),
                            HomeCard(
                                text: "NE Wind",
                                image: "assets/images/ne_wind.png",
                                percentage: '3',
                                sign: "km/h"),
                          ],
                        )
                      ]))),
          //Sun Image........
          CustomImage(
              image: "assets/images/sun.png",
              height: 60,
              width: 60,
              right: 0,
              bottom: 10)
        ]));
  }
}
