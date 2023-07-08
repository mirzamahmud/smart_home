import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/widgets/custom_gradient.dart';
import 'package:smart_house/widgets/custom_image.dart';

class DetailsFirstSection extends StatelessWidget {
  const DetailsFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 455,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: decoration,
      child: Stack(
        children: [
          const Positioned(
              left: 0,top: 105,right: -150,
              child: CustomGradient()),

          CustomImage(
            image: "assets/images/lamp1.png",
            height: 200,
            top: 0,
            right: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 24,
                    color: Colors.white,
                  ),
                  Text(
                    "Back",
                    style: smallWhiteLite,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Lamp",
                  style: titleWhiteBold,
                )),
          ),
          Positioned(
              left: 0,
              top: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dining Room",
                    style: semiMidWhiteLite,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image.asset(
                      "assets/images/off.png",
                      height: 24,
                      width: 55,
                    ),
                  ),
                  Row(children: [
                    Text(
                      "80",
                      style: bigWhiteBold,
                    ),
                    Text(
                      "%",
                      style: titleWhiteBold,
                    ),
                  ]),
                  Text(
                    "Brightness",
                    style: midWhiteLite,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Insensity",
                      style: smallSemiWhiteBold,
                    ),
                  ),
                ],
              )),
          CustomImage(
            image: "assets/images/lite.png",
            height: 42,
            left: 0,
            bottom: 160,
            right: 0,
          ),

          //Divider and usages section
          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: darkColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 15),
                  child: Text(
                    "Usages",
                    style: semiMidWhiteBold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Use Today",
                      style: smallWhiteLite,
                    ),
                    Row(
                      children: [
                        Text(
                          "50 ",
                          style: midWhiteBold,
                        ),
                        Text(
                          "watt",
                          style: midWhiteLite,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Use Week",
                      style: smallWhiteLite,
                    ),
                    Row(
                      children: [
                        Text(
                          "500 ",
                          style: midWhiteBold,
                        ),
                        Text(
                          "kwh",
                          style: midWhiteLite,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Use Month",
                      style: smallWhiteLite,
                    ),
                    Row(
                      children: [
                        Text(
                          "5000 ",
                          style: midWhiteBold,
                        ),
                        Text(
                          "kwh",
                          style: midWhiteLite,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
