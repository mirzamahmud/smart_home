import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_house/context/strings.dart';
import 'package:smart_house/screens/home_page.dart';
import 'package:smart_house/screens/profile.dart';
import 'package:smart_house/screens/smart.dart';
import 'package:smart_house/screens/usage.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}
class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    PageController controller = PageController();

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (index){
          setState(() {
            currentIndex = index;
          });
        },
        children: const [
          HomePage(),
          Smart(),
          Usage(),
          Profile(),
        ],
      ),

      bottomNavigationBar: Container(
          height: 88,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              color: backTill),
          child: GNav(
            haptic: true, // haptic feedback
            tabBorderRadius: 8,
            tabShadow: const [BoxShadow(color: Colors.white,spreadRadius: -1,)], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: const Duration(milliseconds: 100), // tab animation duration
            gap: 2, // the tab button gap between icon and text
            color: backTill, // unselected icon color
            activeColor: backTill, // selected icon and text color
            iconSize: 24, // tab button icon size// selected tab background color
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16), // navigation bar padding
            tabs: [
              GButton(textStyle: semiMidTillBold,
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(textStyle: semiMidTillBold,
                icon: Icons.show_chart,
                text: 'Smart',
              ),
              GButton(textStyle: semiMidTillBold,
                icon: Icons.pie_chart_rounded,
                text: 'Usage',
              ),
              GButton(textStyle: semiMidTillBold,
                icon: Icons.person_outline_rounded,
                text: 'Profile',
              )
            ],
            selectedIndex: currentIndex,
            onTabChange: (index){
              setState(() {
                controller.jumpToPage(index);
              });
            },
          ),
      ),
    );
  }
}
