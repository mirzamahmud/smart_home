import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/pages.dart';
import 'package:smart_house/widgets/custom_box.dart';
import 'package:smart_house/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backTill,
      body: SingleChildScrollView(
        child: Stack(
          children: [

            const CustomBox(height: 96,width: 85,right: 150,top: -40,radius: 20,),

            const CustomBox(height: 96,width: 85,right: 70,top: 150,radius: 20,),

            const CustomBox(height: 96,width: 85,right: 100,top: 110,radius: 20,),

            const CustomBox(height: 80,width: 80,left: -37,top: 220,radius: 50,),

            const CustomBox(height: 92,width: 90,bottom: 60,radius: 20,left: 150,),

            const CustomBox(height: 96,width: 85,bottom: 0,radius: 20,left: -20,),


            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Text("SmartMe",style: midSemiWhiteBold,textAlign: TextAlign.left),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 10),
                    child: Text("Welcome Home",style: semiBigSemiWhite,textAlign: TextAlign.left),
                  ),

                  Text(splashText,style: semiMidSemiWhite,textAlign: TextAlign.left),

                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Image.asset("assets/images/splash1.png",height: 260,)),

                  Row(
                    children: [
                      Custom_Button(text: "Get Started", backgroundColor: grayColor, foregroundColor: Colors.white,icon: Icons.navigate_next,size: 24,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Pages(),));
                        },),
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
