import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTheme {
  HomeTheme._();
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color brokenWhiteColor = Color(0xFFE8ECF5);
  static const Color darkBlueColor = Color(0xFF0363B1);
  static const Color blueColor = Color(0xFF047CDD);
  static const Color softBlueColor = Color(0xFFCDE5F8);
  static const Color darkGreenColor = Color(0xFF06873D);
  static const Color greenColor = Color(0xFF08A94C);
  static const Color softGreenColor = Color(0xFFD5FADD);
  static const Color blackColor = Color(0xFF333F47);
  static const Color greyColor = Color(0xFFF5F8FA);
  static const Color darkGreyColor = Color(0xFF7E93A8);
  static const Color redColor = Color(0xFFD62926);
  static const Color orangeGradient1 = Color(0xFFF8981D);
  static const Color orangeGradient2 = Color(0xFFFFB85B);
}

const Color transparentColor = Colors.transparent;

TextStyle blackTextStyle = GoogleFonts.poppins(color: HomeTheme.blackColor);
TextStyle whiteTextStyle = GoogleFonts.poppins(color: HomeTheme.whiteColor);
TextStyle redTextStyle = GoogleFonts.poppins(color: HomeTheme.redColor);
TextStyle darkGreyTextStyle =
    GoogleFonts.poppins(color: HomeTheme.darkGreyColor);
TextStyle blueTextStyle = GoogleFonts.poppins(color: HomeTheme.blueColor);

FontWeight bold = FontWeight.bold;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight light = FontWeight.w100;
