import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//Padding + Margin
const aPaddingMargin = EdgeInsets.all(10);
const bPaddingMargin = EdgeInsets.all(15);
const cPaddingMargin = EdgeInsets.all(20);
const dPaddingMargin = EdgeInsets.all(25);
EdgeInsets aMargin = EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h, top: 10.h,);
const bMargin = EdgeInsets.only(left: 10, right: 10);
const dMargin = EdgeInsets.only(
  left: 15,
  right: 15,
);
const cMargin = EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 90);
const eMargin = EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15);

TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.poppins(
      fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
  headline2: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
  headline3: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
  headline4: GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black),
  headline5: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black),
  headline6: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 66, 63, 64)),
  // headline5: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
  // headline6: GoogleFonts.poppins(
  //     fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.poppins(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
  subtitle2: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
  bodyText1: GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, color: const Color.fromARGB(255, 112, 112, 112)),
  bodyText2: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
  // bodySmall: GoogleFonts.poppins(
  //     fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
  button: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 19, 143, 120),
    backgroundColor: const Color.fromARGB(255, 19, 143, 120),
  ),
  caption: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

//Colors
const green = Color.fromRGBO(111, 199, 183, 1);
const white = Colors.white;
const black = Colors.black;
const bgColor = Color.fromARGB(255, 241, 241, 246);
const appbarColor = Color.fromARGB(255, 221, 221, 221);
const textfieldColor = Color.fromARGB(255, 169, 169, 169);
const line = Color.fromARGB(255, 66, 63, 64);
const hint = Color.fromARGB(255, 112, 112, 112);
const categoryBox = Color.fromARGB(255, 200, 152, 196);
const brandBox = Color.fromARGB(255, 207, 207, 207);

const p1 = Color.fromARGB(255, 147, 149, 165);
const p2 = Color.fromARGB(255, 10, 59, 255);
const p3 = Color.fromARGB(255, 125, 125, 125);
const p4 = Color.fromARGB(255, 255, 0, 0);




final List<String> sortButtons = [
  "all",
  "you'll get",
  "you'll pay",
];
















