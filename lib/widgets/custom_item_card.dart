import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/widgets/custom_image.dart';

class CustomItemCard extends StatelessWidget {
   const CustomItemCard({super.key,required this.list});

  final List list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 112,
          width: double.infinity,
          child: Card(
            elevation: 1,
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(16))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 8),
              child: Stack(
                children: [
                  //Start Lamp Text ....
                  Positioned(
                    top: 0,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(list[index].title,
                            style: semiMidDarkBold),
                        Text(list[index].details,
                            style: smallDarkLight),
                      ],
                    ),
                  ),

                  //Lite and time section...
                  Positioned(
                      left: 0,
                      bottom: 4,
                      child: Row(children: [
                        Image.asset(list[index].image2,
                            height: 40, width: 40),
                        const SizedBox(width: 16),
                        Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text("from",
                                  style: smallDarkLight),
                              Text(list[index].start, style: semiMidDarkBold)
                            ])
                      ])),

                  //On Image button...
                  CustomImage(
                    image: list[index].image1,
                    height: 24,
                    width: 55,
                    right: 0,
                    top: 0,
                  ),

                  //Center Divider...
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: VerticalDivider(
                          thickness: 0.3,
                          endIndent: 0,
                          indent: 40,
                          color: darkColor)),

                  //Fight text and delete edit button
                  Positioned(
                      bottom: 4,
                      right: 0,
                      child: Row(
                          children: [
                            Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                children: [
                                  Text("to", style: smallDarkLight),
                                  Text(list[index].end,style: semiMidDarkBold)]
                            ),
                            const SizedBox(width: 33,),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/delete.png",
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  "assets/images/edit.png",
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            )])),

                  //Right Divider
                  Positioned(
                      bottom: 8,
                      right: 35,
                      top: 0,
                      child: VerticalDivider(
                          width: 10,
                          thickness: 0.1,
                          endIndent: 0,
                          indent: 40,
                          color: darkColor)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
