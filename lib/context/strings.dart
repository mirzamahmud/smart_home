import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var backTill = const Color(0xff4C7380);
var semiWhite = const Color(0xffD8E4E8);
var darkColor = const Color(0xff404040);
var lightDarkColor = const Color(0xff878787);
var lightGreenColor = const Color(0xff659A6E);
var grayColor = const Color(0xff9A7265);

var strokeColor = const Color(0xffCDCDCD);

var miniSemiWhiteBold = GoogleFonts.poppins(fontSize: 10,color: semiWhite,fontWeight: FontWeight.bold);
var miniSemiWhiteLite = GoogleFonts.poppins(fontSize: 10,color: semiWhite);

var smallWhiteLite =GoogleFonts.poppins(fontSize: 12, color: Colors.white);
var smallSemiWhiteLite =GoogleFonts.poppins(fontSize: 12, color: semiWhite);
var smallSemiWhiteBold =GoogleFonts.poppins(fontSize: 12, color: semiWhite,fontWeight: FontWeight.bold);
var smallLightDark =GoogleFonts.poppins(fontSize: 12, color: lightDarkColor);
var smallLightGreen =GoogleFonts.poppins(fontSize: 12, color: lightGreenColor);
var smallLightGray =GoogleFonts.poppins(fontSize: 12, color: grayColor);
var smallDarkLight= GoogleFonts.poppins(color: darkColor,fontSize: 12,);
var smallTillLight= GoogleFonts.poppins(color: backTill,fontSize: 12,);
var smallDarkBold= GoogleFonts.poppins(color: darkColor,fontSize: 12,fontWeight: FontWeight.bold);

var semiMidWhiteBold = GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white);
var semiMidWhiteLite = GoogleFonts.poppins(fontSize: 14,color: Colors.white);
var semiMidDarkBold = GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: darkColor);
var semiMidSemiWhiteBold = GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: semiWhite);
var semiMidSemiWhite = GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: semiWhite);
var semiMidTillBold = GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: backTill);
var semiMidTillLite = GoogleFonts.poppins(fontSize: 14,color: backTill);

var midTillBold = GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: backTill);
var midWhiteLite = GoogleFonts.poppins(fontSize: 16,color: Colors.white);
var midWhiteBold = GoogleFonts.poppins(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold);
var midSemiWhiteBold = GoogleFonts.poppins(fontSize: 16,color: semiWhite,fontWeight: FontWeight.bold);
var midSemiWhite = GoogleFonts.poppins(fontSize: 16,color: semiWhite,fontWeight: FontWeight.bold);
var midDarkBold = GoogleFonts.poppins(fontSize: 16,color: darkColor,fontWeight: FontWeight.bold);

var largeDarkBold= GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18,color: darkColor,);
var largeWhiteBold= GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white);
var largeTillBold= GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18,color: backTill);

var titleWhiteBold = GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white);
var titleSemiWhiteBold = GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold,color: semiWhite);
var semiBigSemiWhite = GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white);
var bigWhiteBold = GoogleFonts.poppins(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white);


var decoration =BoxDecoration(color: backTill, borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40)));
var decoration1 =const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(32),),color: Colors.white);
var decoration2 =BoxDecoration(borderRadius: const BorderRadius.only(topRight: Radius.circular(32),),color: semiWhite);

String splashText = "no matter how far you go,\n"
    "home will be your destination to return to.\n"
    "let's make your home comfortable";