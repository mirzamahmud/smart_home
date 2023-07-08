import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/model/my_model.dart';
import 'package:smart_house/widgets/custom_details.dart';
import 'package:smart_house/widgets/custom_item_card.dart';
import 'package:smart_house/widgets/detail_first_section.dart';

class DiningRoomLamp extends StatelessWidget {
  const DiningRoomLamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: semiWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //First Section..
            const DetailsFirstSection(),
            
            //Second Section..
            Container(
              color: backTill,
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: decoration2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDetails(count: " ${mySchedule.length} ", title: "Schedule "),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(padding: const EdgeInsets.all(6),
                              child: Icon(Icons.add,
                                size: 20,
                                color: backTill,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomItemCard(list: mySchedule),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
