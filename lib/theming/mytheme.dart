// ignore_for_file: file_names

import 'package:final_to_do_app/theming/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Mythemedata {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: Appcolors.primaryColor,
      scaffoldBackgroundColor: Appcolors.backgroundLightColor,
      appBarTheme: const AppBarTheme(
        
        elevation: 0,
        backgroundColor: Appcolors.primaryColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
         
          shape: StadiumBorder(
              side: BorderSide(color: Appcolors.whiteColor, width: 5))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Appcolors.primaryColor,
          unselectedItemColor: Appcolors.settingsIconColor,
          showUnselectedLabels: false),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Appcolors.whiteColor),
          titleMedium: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Appcolors.blackColor),
          bodyMedium: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Appcolors.blackColor),
          bodySmall: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Appcolors.blackColor)));
}
