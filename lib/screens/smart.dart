import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/model/my_model.dart';
import 'package:smart_house/widgets/custom_details.dart';
import 'package:smart_house/widgets/custom_item_card.dart';

class Smart extends StatelessWidget {
  const Smart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //First Section.....
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: decoration,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Smart Home", style: titleWhiteBold),
                      Image.asset("assets/images/settings.png", height: 40,width: 40)]),
                  const SizedBox(height: 12),
                  Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),side: BorderSide(width: 1.5,color: darkColor,)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Living Room",style: midDarkBold),
                          Icon(Icons.keyboard_arrow_down_rounded,size: 24,color: backTill)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            //Second Section.....
            Container(
              color: backTill,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: decoration2,
                child: Column(
                  children: [
                    CustomDetails(count: " ${smartModel.length} ", title: "Smart Mode "),
                    const SizedBox(height: 10),
                    CustomItemCard(list: smartModel),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),side: BorderSide(width: 2,color: backTill)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 18),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Add New Smart Mode",style: semiMidDarkBold),
                          ],
                        ),
                      ),
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
