import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/widgets/custom_active_card.dart';
import 'package:smart_house/widgets/custom_button.dart';
import 'package:smart_house/widgets/custom_details.dart';
import 'package:smart_house/widgets/custom_appbar.dart';
import 'package:smart_house/widgets/living_room_chart.dart';
import 'package:smart_house/widgets/living_room_details.dart';

class LivingRoomAC extends StatelessWidget {
  const LivingRoomAC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 390,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              decoration: decoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(title: "Living Room",onTap: (){Navigator.pop(context);}),
                  Container(
                    height: 77,
                    padding: const EdgeInsets.symmetric(horizontal: 10,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: semiWhite
                    ),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LivingRoomDetails(image: "assets/images/temp.png", title: "19°c", text: "AC"),
                      VerticalDivider(color: backTill,thickness: 0.3,indent: 20,endIndent: 20),
                      const LivingRoomDetails(image: "assets/images/light.png", title: "18%", text: "Light Lamp"),
                      VerticalDivider(color: backTill,thickness: 0.3,indent: 20,endIndent: 20),
                      const LivingRoomDetails(image: "assets/images/network.png", title: "10Kb/s", text: "WIFI"),
                    ],
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Usage Today',style: midSemiWhiteBold),
                        Row(
                          children: [
                            Text('25 ',style: titleSemiWhiteBold),
                            Text('watt',style: midSemiWhite),
                          ],
                        ),
                      ],
                    ),
                  ),
                  LivingRoomChart(),
                ],
              ),
            ),

            Container(
              color: backTill,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                decoration: decoration1,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDetails(count: " 4 ", title: "Device"),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Card(
                            elevation: 5,
                            color: grayColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: const Padding(padding: EdgeInsets.all(6),
                              child: Icon(Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        CustomActive(
                          image: "assets/images/tv.png",
                          count: "TVN",
                          title: "TV",
                          temp: "Channel",
                          name: "Living room",
                          c: "",
                          onTap: () {},
                        ),
                        const SizedBox(width: 12),
                        CustomActive(
                          image: "assets/images/lamp.png",
                          count: "White",
                          title: "Lamp",
                          temp: "Colour",
                          name: "Living room",
                          c: "",
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Row(
                      children: [
                        CustomActive(
                          image: "assets/images/tv.png",
                          count: "1,02",
                          title: "Lamp",
                          temp: "Speeds",
                          name: "Living room",
                          c: "Kb/s",
                          onTap: () {},
                        ),
                        const SizedBox(width: 12),
                        CustomActive(
                          image: "assets/images/ac.png",
                          count: "19°",
                          title: "AC",
                          temp: "Temperature",
                          name: "Living room",
                          c: "c",
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Custom_Button(text: "Turn Off All Devices", backgroundColor: grayColor, foregroundColor: Colors.white, onTap: (){})
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


